#import "MyGL View.h"
#import <OpenGL/OpenGL.h>
#import <OpenGL/gl3.h>

@implementation MyGLView

-(instancetype)initWithFrame:(NSRect)frame
{
    NSOpenGLPixelFormatAttribute attes[]={
        NSOpenGLPFAAllowOfflineRenderers,
        NSOpenGLPFAAccelerated,
        NSOpenGLPFADoubleBuffer,
        NSOpenGLPFAColorSize,32,
        NSOpenGLPFADepthSize,32,
        NSOpenGLPFAMultisample,
        NSOpenGLPFASampleBuffers,1,
        NSOpenGLPFASamples,4,
        NSOpenGLPFANoRecovery,
        NSOpenGLPFAOpenGLProfile, NSOpenGLPFAOpenGLProfileVersion3_2Core,0
    };
    NSOpenGLPixelFormat *pixelFormat=[[NSOpenGLPixelFormat alloc] initWithAttributes:attes];
    
    self=[super initWithFrame:frame pixelFormat:pixelFormat];
    if(self){
        
    }
}
@end


