.class public Lcom/netease/filterenginelibrary/gpuimage/FilterNativeLibrary;
.super Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "filter-sdk"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native stringAddBlendFragmentShader()Ljava/lang/String;
.end method

.method public static native stringAddBlendVertexShader()Ljava/lang/String;
.end method

.method public static native stringBlendFragmentShader()Ljava/lang/String;
.end method

.method public static native stringFragmentShader()Ljava/lang/String;
.end method

.method public static native stringGausVertexShader()Ljava/lang/String;
.end method

.method public static native stringGestureVertexShader()Ljava/lang/String;
.end method

.method public static native stringHardLightBlendFragmentShader()Ljava/lang/String;
.end method

.method public static native stringLookupFragmentShader()Ljava/lang/String;
.end method

.method public static native stringMultiplyBlendFragmentShader()Ljava/lang/String;
.end method

.method public static native stringNoFilterFragmentShader()Ljava/lang/String;
.end method

.method public static native stringNoFilterVertexShader()Ljava/lang/String;
.end method

.method public static native stringRotateVertexShader()Ljava/lang/String;
.end method

.method public static native stringSaturationFragmentShader()Ljava/lang/String;
.end method

.method public static native stringSharpenFragmentShader()Ljava/lang/String;
.end method

.method public static native stringSharpenVertexShader()Ljava/lang/String;
.end method

.method public static native stringVertexShader()Ljava/lang/String;
.end method
