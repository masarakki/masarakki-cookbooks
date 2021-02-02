def append(src, str):
  return src + str

class FilterModule(object):
  def filters(self):
    return {
      'append': append
    }
