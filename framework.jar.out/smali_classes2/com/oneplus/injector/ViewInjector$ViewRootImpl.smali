.class Lcom/oneplus/injector/ViewInjector$ViewRootImpl;
.super Ljava/lang/Object;
.source "ViewInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/injector/ViewInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewRootImpl"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ViewInjector.ViewRootImpl"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 415
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static canDispatchPointerEvent(Landroid/content/Context;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 420
    const/4 v0, 0x1

    .line 421
    .local v0, "result":Z
    const-string v2, "longshot"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/longshot/LongScreenshotManager;

    .line 423
    .local v1, "sm":Lcom/oneplus/longshot/LongScreenshotManager;
    if-eqz v1, :cond_0

    .line 424
    invoke-virtual {v1}, Lcom/oneplus/longshot/LongScreenshotManager;->isLongshotHandleState()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 425
    const v2, 0x10001002

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v0

    .line 428
    :cond_0
    return v0
.end method
