.class public Lcom/netease/filterenginelibrary/gpuimage/O;
.super Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com.netease.filterenginesdk.gpuimage-library"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native a([BII[I)V
.end method

.method public static native b([BII[I)V
.end method
