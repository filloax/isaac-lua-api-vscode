//#region mergeDeep
// Source - https://stackoverflow.com/a/34749873
// Posted by Salakar, modified by community. See post 'Timeline' for change history
// Retrieved 2026-10-16, License - CC BY-SA 3.0
// (Edited - Filloax)

/**
 * Simple object check.
 * @param item
 * @returns {boolean}
 */
export function isObject(item: unknown): item is Record<string, any> {
  return (!!item && typeof item === 'object' && !Array.isArray(item));
}

/**
 * Deep merge two objects, does not mutate
 * @param target
 * @param ...sources
 */
export function mergeDeep<T extends object>(target: T, ...sources: Partial<T>[]): T {
  return mergeDeepInner({...target}, ...sources);
}

function mergeDeepInner<T extends object>(target: T, ...sources: Partial<T>[]): T {
  if (!sources.length) {return target;}
  const source = sources.shift();

  if (isObject(target) && isObject(source)) {
    for (const key in source) {
      if (isObject(source[key])) {
        // copy so the field object is not modified
        Object.assign(target, { [key]: {...(target[key] ?? {})} });
        mergeDeepInner(target[key] as object, source[key]);
      } else {
        Object.assign(target, { [key]: source[key] });
      }
    }
  }

  return mergeDeepInner(target, ...sources);
}
//#endregion