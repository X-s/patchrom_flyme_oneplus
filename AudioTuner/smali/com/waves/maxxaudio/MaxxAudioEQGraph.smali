.class public Lcom/waves/maxxaudio/MaxxAudioEQGraph;
.super Ljava/lang/Object;
.source "MaxxAudioEQGraph.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native GetEQY(I)I
.end method

.method public static native GraphGetEQState(I)I
.end method

.method public static native GraphInit(FFII)I
.end method

.method public static native GraphSetEQFreq(ID)V
.end method

.method public static native GraphSetEQGain(ID)V
.end method

.method public static native GraphSetEQQ(ID)V
.end method

.method public static native GraphSetEQState(IJ)V
.end method

.method public static native GraphSetEQType(IJ)V
.end method
