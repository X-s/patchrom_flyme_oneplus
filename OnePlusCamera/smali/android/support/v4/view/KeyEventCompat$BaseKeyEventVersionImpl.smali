.class Landroid/support/v4/view/KeyEventCompat$BaseKeyEventVersionImpl;
.super Ljava/lang/Object;
.source "KeyEventCompat.java"

# interfaces
.implements Landroid/support/v4/view/KeyEventCompat$KeyEventVersionImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/KeyEventCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BaseKeyEventVersionImpl"
.end annotation


# static fields
.field private static final META_ALL_MASK:I = 0xf7

.field private static final META_MODIFIER_MASK:I = 0xf7


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static metaStateFilterDirectionalModifiers(IIIII)I
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 55
    and-int v0, p1, p2

    if-nez v0, :cond_0

    move v0, v1

    .line 56
    :goto_0
    or-int v3, p3, p4

    .line 57
    and-int v4, p1, v3

    if-nez v4, :cond_1

    .line 59
    :goto_1
    if-nez v0, :cond_2

    .line 64
    if-nez v1, :cond_4

    .line 67
    return p0

    :cond_0
    move v0, v2

    .line 55
    goto :goto_0

    :cond_1
    move v1, v2

    .line 57
    goto :goto_1

    .line 60
    :cond_2
    if-nez v1, :cond_3

    .line 63
    xor-int/lit8 v0, v3, -0x1

    and-int/2addr v0, p0

    return v0

    .line 61
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "bad arguments"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_4
    xor-int/lit8 v0, p2, -0x1

    and-int/2addr v0, p0

    return v0
.end method


# virtual methods
.method public dispatch(Landroid/view/KeyEvent;Landroid/view/KeyEvent$Callback;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 114
    invoke-virtual {p1, p2}, Landroid/view/KeyEvent;->dispatch(Landroid/view/KeyEvent$Callback;)Z

    move-result v0

    return v0
.end method

.method public getKeyDispatcherState(Landroid/view/View;)Ljava/lang/Object;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 108
    return-object v0
.end method

.method public isTracking(Landroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x0

    return v0
.end method

.method public metaStateHasModifiers(II)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 84
    invoke-virtual {p0, p1}, Landroid/support/v4/view/KeyEventCompat$BaseKeyEventVersionImpl;->normalizeMetaState(I)I

    move-result v1

    and-int/lit16 v1, v1, 0xf7

    const/16 v2, 0x40

    const/16 v3, 0x80

    .line 85
    invoke-static {v1, p2, v0, v2, v3}, Landroid/support/v4/view/KeyEventCompat$BaseKeyEventVersionImpl;->metaStateFilterDirectionalModifiers(IIIII)I

    move-result v1

    const/4 v2, 0x2

    const/16 v3, 0x10

    const/16 v4, 0x20

    .line 87
    invoke-static {v1, p2, v2, v3, v4}, Landroid/support/v4/view/KeyEventCompat$BaseKeyEventVersionImpl;->metaStateFilterDirectionalModifiers(IIIII)I

    move-result v1

    .line 89
    if-eq v1, p2, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method public metaStateHasNoModifiers(I)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 94
    invoke-virtual {p0, p1}, Landroid/support/v4/view/KeyEventCompat$BaseKeyEventVersionImpl;->normalizeMetaState(I)I

    move-result v1

    and-int/lit16 v1, v1, 0xf7

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public normalizeMetaState(I)I
    .locals 2

    .prologue
    .line 73
    and-int/lit16 v0, p1, 0xc0

    if-nez v0, :cond_0

    move v0, p1

    .line 76
    :goto_0
    and-int/lit8 v1, v0, 0x30

    if-nez v1, :cond_1

    .line 79
    :goto_1
    and-int/lit16 v0, v0, 0xf7

    return v0

    .line 74
    :cond_0
    or-int/lit8 v0, p1, 0x1

    goto :goto_0

    .line 77
    :cond_1
    or-int/lit8 v0, v0, 0x2

    goto :goto_1
.end method

.method public startTracking(Landroid/view/KeyEvent;)V
    .locals 0

    .prologue
    .line 99
    return-void
.end method
