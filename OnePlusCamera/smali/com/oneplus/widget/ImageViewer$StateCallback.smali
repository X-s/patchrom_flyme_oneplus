.class public abstract Lcom/oneplus/widget/ImageViewer$StateCallback;
.super Ljava/lang/Object;
.source "ImageViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/widget/ImageViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "StateCallback"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageAutoScrollingCompleted(Lcom/oneplus/widget/ImageViewer;)V
    .locals 0
    .param p1, "imageViewer"    # Lcom/oneplus/widget/ImageViewer;

    .prologue
    .line 167
    return-void
.end method

.method public onImageAutoScrollingStarted(Lcom/oneplus/widget/ImageViewer;)V
    .locals 0
    .param p1, "imageViewer"    # Lcom/oneplus/widget/ImageViewer;

    .prologue
    .line 174
    return-void
.end method

.method public onImageBoundsAnimationCompleted(Lcom/oneplus/widget/ImageViewer;)V
    .locals 0
    .param p1, "imageViewer"    # Lcom/oneplus/widget/ImageViewer;

    .prologue
    .line 181
    return-void
.end method

.method public onImageBoundsAnimationStarted(Lcom/oneplus/widget/ImageViewer;IIII)V
    .locals 0
    .param p1, "imageViewer"    # Lcom/oneplus/widget/ImageViewer;
    .param p2, "targetLeft"    # I
    .param p3, "targetTop"    # I
    .param p4, "targetRight"    # I
    .param p5, "targetBottom"    # I

    .prologue
    .line 192
    return-void
.end method

.method public onImageBoundsChanged(Lcom/oneplus/widget/ImageViewer;IIII)V
    .locals 0
    .param p1, "imageViewer"    # Lcom/oneplus/widget/ImageViewer;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 203
    return-void
.end method

.method public onImageBoundsTypeChanged(Lcom/oneplus/widget/ImageViewer;Lcom/oneplus/widget/ImageViewer$ImageBoundsType;Lcom/oneplus/widget/ImageViewer$ImageBoundsType;)V
    .locals 0
    .param p1, "imageViewer"    # Lcom/oneplus/widget/ImageViewer;
    .param p2, "oldType"    # Lcom/oneplus/widget/ImageViewer$ImageBoundsType;
    .param p3, "newType"    # Lcom/oneplus/widget/ImageViewer$ImageBoundsType;

    .prologue
    .line 212
    return-void
.end method

.method public onUserImageMovingCompleted(Lcom/oneplus/widget/ImageViewer;)V
    .locals 0
    .param p1, "imageViewer"    # Lcom/oneplus/widget/ImageViewer;

    .prologue
    .line 219
    return-void
.end method

.method public onUserImageMovingStarted(Lcom/oneplus/widget/ImageViewer;)V
    .locals 0
    .param p1, "imageViewer"    # Lcom/oneplus/widget/ImageViewer;

    .prologue
    .line 226
    return-void
.end method
