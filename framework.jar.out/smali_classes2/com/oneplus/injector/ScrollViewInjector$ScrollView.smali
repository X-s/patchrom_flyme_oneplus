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

.field public static isInjection:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x0

    sput-boolean v0, Lcom/oneplus/injector/ScrollViewInjector$ScrollView;->isInjection:Z

    .line 10
    return-void
.end method

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
    .line 17
    sget-boolean v3, Lcom/oneplus/injector/ScrollViewInjector$ScrollView;->isInjection:Z

    if-nez v3, :cond_0

    .line 18
    return-void

    .line 21
    :cond_0
    const-string/jumbo v3, "longshot"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 20
    check-cast v1, Lcom/oneplus/longshot/LongScreenshotManager;

    .line 22
    .local v1, "sm":Lcom/oneplus/longshot/LongScreenshotManager;
    if-eqz v1, :cond_1

    .line 23
    invoke-virtual {v1}, Lcom/oneplus/longshot/LongScreenshotManager;->isLongshotMoveState()Z

    move-result v0

    .line 24
    .local v0, "result":Z
    if-eqz v0, :cond_1

    .line 25
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    .line 26
    .local v2, "stacks":[Ljava/lang/StackTraceElement;
    invoke-virtual {v1, p1}, Lcom/oneplus/longshot/LongScreenshotManager;->notifyLongshotScroll(Z)V

    .line 16
    .end local v0    # "result":Z
    .end local v2    # "stacks":[Ljava/lang/StackTraceElement;
    :cond_1
    return-void
.end method
