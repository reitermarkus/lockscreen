#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
  NSBundle* bundle = [NSBundle bundleWithPath:@"/Applications/Utilities/Keychain Access.app/Contents/Resources/Keychain.menu"];

  if (bundle != nil) {
    id instance = [[bundle.principalClass alloc] init];

    if (instance != nil) {
      #pragma clang diagnostic push
      #pragma clang diagnostic ignored "-Wundeclared-selector"
      [instance performSelector:@selector(_lockScreenMenuHit:) withObject:nil];
      #pragma clang diagnostic pop

      return EXIT_SUCCESS;
    }
  }

  return EXIT_FAILURE;
}
