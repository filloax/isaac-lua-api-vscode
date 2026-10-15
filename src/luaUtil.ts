import * as luaparse from 'luaparse';

export function walk(node: unknown, visitor: (node: luaparse.Node) => boolean | void): void {
  if (!node || typeof node !== 'object') {return;}

  if ('type' in node && typeof (node as { type: unknown }).type === 'string') {
    if (visitor(node as luaparse.Node) === false) {return;}
  }

  for (const value of Object.values(node)) {
    if (Array.isArray(value)) {
      value.forEach(item => walk(item, visitor));
    } else if (value && typeof value === 'object' && 'type' in value) {
      walk(value, visitor);
    }
  }
}