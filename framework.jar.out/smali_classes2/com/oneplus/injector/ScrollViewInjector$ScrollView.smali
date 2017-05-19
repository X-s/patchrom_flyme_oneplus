.class public Lcom/oneplus/injector/ScrollViewInjector$ScrollView;
.super Ljava/lang/Object;
.source "ScrollViewInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/injector/ScrollViewInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ScrollView"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ScrollViewInjector"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static onOverScrolled(Landroid/content/Context;Z)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isOverScroll"    # Z

    .prologue
    .line 15
    const-string v3, "longshot"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/longshot/LongScreenshotManager;

    .line 17
    .local v1, "sm":Lcom/oneplus/longshot/LongScreenshotManager;
    if-eqz v1, :cond_0

    .line 18
    invoke-virtual {v1}, Lcom/oneplus/longshot/LongScreenshotManager;->isLongshotMoveState()Z

    move-result v0

    .line 19
    .local v0, "result":Z
    if-eqz v0, :cond_0

    .line 20
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    .line 21
    .local v2, "stacks":[Ljava/lang/StackTraceElement;
    invoke-virtual {v1, p1}, Lcom/oneplus/longshot/LongScreenshotManager;->notifyLongshotScroll(Z)V

    .line 24
    .end local v0    # "result":Z
    .end local v2    # "stacks":[Ljava/lang/StackTraceElement;
    :cond_0
    return-void
.end method
