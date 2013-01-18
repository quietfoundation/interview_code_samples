describe 'magnitude format', ->

  expectMagToBe = (num, str) ->
    expect(magnitudeFormat(num)).toBe str

  it 'should work', ->
    expectMagToBe 0, '0'
    expectMagToBe 10.34333, '10.34333'
    expectMagToBe 23456, '23K'
    expectMagToBe 312344000, '312M'
    expectMagToBe 1454000000, '1B'
    expectMagToBe 12344000000000, '12T'
