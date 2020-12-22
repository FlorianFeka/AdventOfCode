fs = require("fs");

squareFeetOfWrappingPaper = () => {
    const data = fs.readFileSync("input.txt", "utf8");
    const lines = data.split("\n");
    let sum = 0;
    let volume = 0;
    lines.forEach((line) => {
        let values = line.split("x");
        let l = parseInt(values[0]);
        let w = parseInt(values[1]);
        let h = parseInt(values[2]);
        sum += 2 * l * w + 2 * w * h + 2 * h * l + smallestSide(l, w, h);
        volume += l * w * h + smallestPerimeter(l, w, h);
    });
    console.log(sum);
    console.log(volume);
};

smallestSide = (l, w, h) => {
    let smallestSide = l * w;
    if (w * h < smallestSide) {
        smallestSide = w * h;
    }
    if (h * l < smallestSide) {
        smallestSide = h * l;
    }
    return smallestSide;
};

smallestPerimeter = (l, w, h) => {
    let smallestPerimeter = l + l + w + w;
    if (w + w + h + h < smallestPerimeter) {
        smallestPerimeter = w + w + h + h;
    }
    if (h + h + l + l < smallestPerimeter) {
        smallestPerimeter = h + h + l + l;
    }
    return smallestPerimeter;
};

squareFeetOfWrappingPaper();
