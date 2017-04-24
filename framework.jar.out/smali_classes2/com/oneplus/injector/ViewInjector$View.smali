.class public Lcom/oneplus/injector/ViewInjector$View;
.super Ljava/lang/Object;
.source "ViewInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/injector/ViewInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "View"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/injector/ViewInjector$View$Element;
    }
.end annotation


# static fields
.field private static final ELEMENTS_NOOVERSCROLL:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/injector/ViewInjector$View$Element;",
            ">;"
        }
    .end annotation
.end field

.field private static final ELEMENTS_NOSCROLL:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/injector/ViewInjector$View$Element;",
            ">;"
        }
    .end annotation
.end field

.field private static final ELEMENTS_OVERSCROLL:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/injector/ViewInjector$View$Element;",
            ">;"
        }
    .end annotation
.end field

.field private static final ELEMENTS_SCROLL:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/injector/ViewInjector$View$Element;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "ViewInjector"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/oneplus/injector/ViewInjector$View;->ELEMENTS_SCROLL:Ljava/util/List;

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/oneplus/injector/ViewInjector$View;->ELEMENTS_NOSCROLL:Ljava/util/List;

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/oneplus/injector/ViewInjector$View;->ELEMENTS_OVERSCROLL:Ljava/util/List;

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/oneplus/injector/ViewInjector$View;->ELEMENTS_NOOVERSCROLL:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    return-void
.end method

.method private static clearElements()V
    .locals 1

    .prologue
    .line 115
    sget-object v0, Lcom/oneplus/injector/ViewInjector$View;->ELEMENTS_SCROLL:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 116
    sget-object v0, Lcom/oneplus/injector/ViewInjector$View;->ELEMENTS_NOSCROLL:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 117
    sget-object v0, Lcom/oneplus/injector/ViewInjector$View;->ELEMENTS_OVERSCROLL:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 118
    sget-object v0, Lcom/oneplus/injector/ViewInjector$View;->ELEMENTS_NOOVERSCROLL:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 119
    return-void
.end method

.method private static isElement([Ljava/lang/StackTraceElement;Ljava/util/List;)Z
    .locals 6
    .param p0, "stacks"    # [Ljava/lang/StackTraceElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/StackTraceElement;",
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/injector/ViewInjector$View$Element;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 101
    .local p1, "elements":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/injector/ViewInjector$View$Element;>;"
    const/4 v3, 0x0

    .line 102
    .local v3, "result":Z
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/injector/ViewInjector$View$Element;

    .line 103
    .local v0, "element":Lcom/oneplus/injector/ViewInjector$View$Element;
    invoke-virtual {v0}, Lcom/oneplus/injector/ViewInjector$View$Element;->getPosition()I

    move-result v2

    .line 104
    .local v2, "pos":I
    array-length v4, p0

    if-le v4, v2, :cond_0

    .line 105
    aget-object v4, p0, v2

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/oneplus/injector/ViewInjector$View$Element;->getNameString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    .line 106
    if-eqz v3, :cond_0

    .line 111
    .end local v0    # "element":Lcom/oneplus/injector/ViewInjector$View$Element;
    .end local v2    # "pos":I
    :cond_1
    return v3
.end method

.method public static onAwakenScrollBars(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 74
    const/4 v0, 0x0

    .line 75
    .local v0, "result":Z
    const-string v3, "longshot"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/longshot/LongScreenshotManager;

    .line 77
    .local v1, "sm":Lcom/oneplus/longshot/LongScreenshotManager;
    if-eqz v1, :cond_1

    .line 78
    invoke-virtual {v1}, Lcom/oneplus/longshot/LongScreenshotManager;->isLongshotMoveState()Z

    move-result v0

    .line 79
    if-eqz v0, :cond_1

    .line 80
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    .line 81
    .local v2, "stacks":[Ljava/lang/StackTraceElement;
    sget-object v3, Lcom/oneplus/injector/ViewInjector$View;->ELEMENTS_OVERSCROLL:Ljava/util/List;

    sget-object v4, Lcom/oneplus/injector/ViewInjector$View$Element;->OVERSCROLL:Lcom/oneplus/injector/ViewInjector$View$Element;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    sget-object v3, Lcom/oneplus/injector/ViewInjector$View;->ELEMENTS_NOSCROLL:Ljava/util/List;

    sget-object v4, Lcom/oneplus/injector/ViewInjector$View$Element;->MMAWAKEN12:Lcom/oneplus/injector/ViewInjector$View$Element;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    sget-object v3, Lcom/oneplus/injector/ViewInjector$View;->ELEMENTS_NOSCROLL:Ljava/util/List;

    sget-object v4, Lcom/oneplus/injector/ViewInjector$View$Element;->MMAWAKEN14:Lcom/oneplus/injector/ViewInjector$View$Element;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    sget-object v3, Lcom/oneplus/injector/ViewInjector$View;->ELEMENTS_NOSCROLL:Ljava/util/List;

    sget-object v4, Lcom/oneplus/injector/ViewInjector$View$Element;->MMAWAKEN15:Lcom/oneplus/injector/ViewInjector$View$Element;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    sget-object v3, Lcom/oneplus/injector/ViewInjector$View;->ELEMENTS_SCROLL:Ljava/util/List;

    sget-object v4, Lcom/oneplus/injector/ViewInjector$View$Element;->QQSCROLL:Lcom/oneplus/injector/ViewInjector$View$Element;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    sget-object v3, Lcom/oneplus/injector/ViewInjector$View;->ELEMENTS_SCROLL:Ljava/util/List;

    sget-object v4, Lcom/oneplus/injector/ViewInjector$View$Element;->SCROLL:Lcom/oneplus/injector/ViewInjector$View$Element;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    sget-object v3, Lcom/oneplus/injector/ViewInjector$View;->ELEMENTS_NOSCROLL:Ljava/util/List;

    invoke-static {v2, v3}, Lcom/oneplus/injector/ViewInjector$View;->isElement([Ljava/lang/StackTraceElement;Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 94
    :cond_0
    :goto_0
    invoke-static {}, Lcom/oneplus/injector/ViewInjector$View;->clearElements()V

    .line 97
    .end local v2    # "stacks":[Ljava/lang/StackTraceElement;
    :cond_1
    return v0

    .line 89
    .restart local v2    # "stacks":[Ljava/lang/StackTraceElement;
    :cond_2
    sget-object v3, Lcom/oneplus/injector/ViewInjector$View;->ELEMENTS_OVERSCROLL:Ljava/util/List;

    invoke-static {v2, v3}, Lcom/oneplus/injector/ViewInjector$View;->isElement([Ljava/lang/StackTraceElement;Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 90
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/oneplus/longshot/LongScreenshotManager;->notifyLongshotScroll(Z)V

    goto :goto_0

    .line 91
    :cond_3
    sget-object v3, Lcom/oneplus/injector/ViewInjector$View;->ELEMENTS_SCROLL:Ljava/util/List;

    invoke-static {v2, v3}, Lcom/oneplus/injector/ViewInjector$View;->isElement([Ljava/lang/StackTraceElement;Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 92
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/oneplus/longshot/LongScreenshotManager;->notifyLongshotScroll(Z)V

    goto :goto_0
.end method

.method public static onOverScrolled(Landroid/content/Context;Z)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isOverScroll"    # Z

    .prologue
    .line 25
    const-string v3, "longshot"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/longshot/LongScreenshotManager;

    .line 27
    .local v1, "sm":Lcom/oneplus/longshot/LongScreenshotManager;
    if-eqz v1, :cond_0

    .line 28
    invoke-virtual {v1}, Lcom/oneplus/longshot/LongScreenshotManager;->isLongshotMoveState()Z

    move-result v0

    .line 29
    .local v0, "result":Z
    if-eqz v0, :cond_0

    .line 30
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    .line 31
    .local v2, "stacks":[Ljava/lang/StackTraceElement;
    sget-object v3, Lcom/oneplus/injector/ViewInjector$View;->ELEMENTS_OVERSCROLL:Ljava/util/List;

    sget-object v4, Lcom/oneplus/injector/ViewInjector$View$Element;->LISTOVERSCROLL:Lcom/oneplus/injector/ViewInjector$View$Element;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    sget-object v3, Lcom/oneplus/injector/ViewInjector$View;->ELEMENTS_NOOVERSCROLL:Ljava/util/List;

    sget-object v4, Lcom/oneplus/injector/ViewInjector$View$Element;->WEBOVERSCROLL:Lcom/oneplus/injector/ViewInjector$View$Element;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    sget-object v3, Lcom/oneplus/injector/ViewInjector$View;->ELEMENTS_NOOVERSCROLL:Ljava/util/List;

    sget-object v4, Lcom/oneplus/injector/ViewInjector$View$Element;->BROWSERSCROLL:Lcom/oneplus/injector/ViewInjector$View$Element;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    sget-object v3, Lcom/oneplus/injector/ViewInjector$View;->ELEMENTS_NOOVERSCROLL:Ljava/util/List;

    sget-object v4, Lcom/oneplus/injector/ViewInjector$View$Element;->BROWSEROVERSCROLL:Lcom/oneplus/injector/ViewInjector$View$Element;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    sget-object v3, Lcom/oneplus/injector/ViewInjector$View;->ELEMENTS_NOOVERSCROLL:Ljava/util/List;

    invoke-static {v2, v3}, Lcom/oneplus/injector/ViewInjector$View;->isElement([Ljava/lang/StackTraceElement;Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 43
    :goto_0
    invoke-static {}, Lcom/oneplus/injector/ViewInjector$View;->clearElements()V

    .line 46
    .end local v0    # "result":Z
    .end local v2    # "stacks":[Ljava/lang/StackTraceElement;
    :cond_0
    return-void

    .line 37
    .restart local v0    # "result":Z
    .restart local v2    # "stacks":[Ljava/lang/StackTraceElement;
    :cond_1
    sget-object v3, Lcom/oneplus/injector/ViewInjector$View;->ELEMENTS_OVERSCROLL:Ljava/util/List;

    invoke-static {v2, v3}, Lcom/oneplus/injector/ViewInjector$View;->isElement([Ljava/lang/StackTraceElement;Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 39
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/oneplus/longshot/LongScreenshotManager;->notifyLongshotScroll(Z)V

    goto :goto_0

    .line 41
    :cond_2
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/oneplus/longshot/LongScreenshotManager;->notifyLongshotScroll(Z)V

    goto :goto_0
.end method

.method public static onScrollChanged(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 49
    const-string v3, "longshot"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/longshot/LongScreenshotManager;

    .line 51
    .local v1, "sm":Lcom/oneplus/longshot/LongScreenshotManager;
    if-eqz v1, :cond_0

    .line 52
    invoke-virtual {v1}, Lcom/oneplus/longshot/LongScreenshotManager;->isLongshotMoveState()Z

    move-result v0

    .line 53
    .local v0, "result":Z
    if-eqz v0, :cond_0

    .line 54
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    .line 55
    .local v2, "stacks":[Ljava/lang/StackTraceElement;
    sget-object v3, Lcom/oneplus/injector/ViewInjector$View;->ELEMENTS_NOSCROLL:Ljava/util/List;

    sget-object v4, Lcom/oneplus/injector/ViewInjector$View$Element;->MMCHANGE9:Lcom/oneplus/injector/ViewInjector$View$Element;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    sget-object v3, Lcom/oneplus/injector/ViewInjector$View;->ELEMENTS_NOSCROLL:Ljava/util/List;

    sget-object v4, Lcom/oneplus/injector/ViewInjector$View$Element;->MMCHANGE12:Lcom/oneplus/injector/ViewInjector$View$Element;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    sget-object v3, Lcom/oneplus/injector/ViewInjector$View;->ELEMENTS_NOSCROLL:Ljava/util/List;

    sget-object v4, Lcom/oneplus/injector/ViewInjector$View$Element;->MMCHANGE14:Lcom/oneplus/injector/ViewInjector$View$Element;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    sget-object v3, Lcom/oneplus/injector/ViewInjector$View;->ELEMENTS_NOSCROLL:Ljava/util/List;

    sget-object v4, Lcom/oneplus/injector/ViewInjector$View$Element;->MMCHANGE15:Lcom/oneplus/injector/ViewInjector$View$Element;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    sget-object v3, Lcom/oneplus/injector/ViewInjector$View;->ELEMENTS_NOSCROLL:Ljava/util/List;

    sget-object v4, Lcom/oneplus/injector/ViewInjector$View$Element;->CONTENTSCROLL:Lcom/oneplus/injector/ViewInjector$View$Element;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    sget-object v3, Lcom/oneplus/injector/ViewInjector$View;->ELEMENTS_NOSCROLL:Ljava/util/List;

    sget-object v4, Lcom/oneplus/injector/ViewInjector$View$Element;->BROWSERSCROLL:Lcom/oneplus/injector/ViewInjector$View$Element;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    sget-object v3, Lcom/oneplus/injector/ViewInjector$View;->ELEMENTS_NOSCROLL:Ljava/util/List;

    sget-object v4, Lcom/oneplus/injector/ViewInjector$View$Element;->QZONESCROLL:Lcom/oneplus/injector/ViewInjector$View$Element;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    sget-object v3, Lcom/oneplus/injector/ViewInjector$View;->ELEMENTS_NOSCROLL:Ljava/util/List;

    sget-object v4, Lcom/oneplus/injector/ViewInjector$View$Element;->WEBSCROLL:Lcom/oneplus/injector/ViewInjector$View$Element;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    sget-object v3, Lcom/oneplus/injector/ViewInjector$View;->ELEMENTS_NOSCROLL:Ljava/util/List;

    invoke-static {v2, v3}, Lcom/oneplus/injector/ViewInjector$View;->isElement([Ljava/lang/StackTraceElement;Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 68
    :goto_0
    invoke-static {}, Lcom/oneplus/injector/ViewInjector$View;->clearElements()V

    .line 71
    .end local v0    # "result":Z
    .end local v2    # "stacks":[Ljava/lang/StackTraceElement;
    :cond_0
    return-void

    .line 66
    .restart local v0    # "result":Z
    .restart local v2    # "stacks":[Ljava/lang/StackTraceElement;
    :cond_1
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/oneplus/longshot/LongScreenshotManager;->notifyLongshotScroll(Z)V

    goto :goto_0
.end method
