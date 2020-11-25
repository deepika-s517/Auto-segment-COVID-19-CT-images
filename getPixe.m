function pixl = getPixel(img, x, y, m, n)
    if x < 1 || y < 1 || x >= m || y >= n
        pixl = 0;
    else
        pixl = img(x, y);
	end