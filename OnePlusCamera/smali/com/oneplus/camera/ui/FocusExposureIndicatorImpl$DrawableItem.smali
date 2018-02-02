.class Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$DrawableItem;
.super Ljava/lang/Object;
.source "FocusExposureIndicatorImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DrawableItem"
.end annotation


# instance fields
.field public duration:I

.field public resId:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "resId"    # I
    .param p2, "duration"    # I

    .prologue
    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 198
    iput p2, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$DrawableItem;->duration:I

    .line 199
    iput p1, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$DrawableItem;->resId:I

    .line 196
    return-void
.end method
