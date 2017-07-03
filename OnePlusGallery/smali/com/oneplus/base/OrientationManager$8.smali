.class Lcom/oneplus/base/OrientationManager$8;
.super Landroid/view/OrientationEventListener;
.source "OrientationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/base/OrientationManager;->startOrientationSensorInternal()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "$anonymous0"    # Landroid/content/Context;

    .prologue
    .line 391
    invoke-direct {p0, p1}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    .line 1
    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 0
    .param p1, "orientation"    # I

    .prologue
    .line 396
    # invokes: Lcom/oneplus/base/OrientationManager;->onOrientationChanged(I)V
    invoke-static {p1}, Lcom/oneplus/base/OrientationManager;->access$8(I)V

    .line 397
    return-void
.end method
