class Color {
    public readonly hexValue: string;

    constructor(r: number, g: number, b: number) {
        const toHex = (val: number) =>
            Math.round(255 * Math.min(1, Math.max(0, val))).toString(16)
        this.hexValue = toHex(r) + toHex(g) + toHex(b);
    }
}

class ColorGenerator {
    next() : Color {
        return new Color(Math.random(), Math.random(), Math.random());
    }

    apply(target: HTMLElement, color: Color) {
        target.style.backgroundColor = '#' + color.hexValue;
    }
}

const randomColor = new ColorGenerator();
randomColor.apply(document.body, randomColor.next());