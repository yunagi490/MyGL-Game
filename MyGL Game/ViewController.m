#import "ViewController.h"
#import "MyGL View.h"

@implementation ViewController
- (instancetype)initWithFrame:(NSRect)frame
{
    NSOpenGLPixelFormatAttribute attrs[] =
    {
        NSOpenGLPFAAllowOfflineRenderers,
        NSOpenGLPFAAccelerated,
        NSOpenGLPFADoubleBuffer,
        NSOpenGLPFAColorSize, 32,
        NSOpenGLPFADepthSize, 32,
        NSOpenGLPFAMultisample,
        NSOpenGLPFASampleBuffers, 1,
        NSOpenGLPFASamples, 4,
        NSOpenGLPFANoRecovery,
        NSOpenGLPFAOpenGLProfile, NSOpenGLProfileVersion3_2Core,
        0
    };
    NSOpenGLPixelFormat *pixelFormat = [[NSOpenGLPixelFormat alloc] inutWithAttributes:attrs];

    self=[super initWithFrame:frame pixelFormat:pixelFormat];
    if(self){
        [self setWantsBestResolttionOpenGLSurface:YES];
    }
    return self;
}

-(void)prepareOpenGL
{
    [super prepareOpenGL];
    NSOpenGLContext *glContext = [self openGLContext];

    glClearColer(1.0f,0.0f,1.0f,1.0f);
    glClear(GL_COLOR_BUFFER_BIT);
    [glContext flushBuffer];
}

@end
