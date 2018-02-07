.class Landroid/support/v4/widget/PopupWindowCompat$BasePopupWindowImpl;
.super Ljava/lang/Object;
.source "PopupWindowCompat.java"

# interfaces
.implements Landroid/support/v4/widget/PopupWindowCompat$PopupWindowImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/PopupWindowCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BasePopupWindowImpl"
.end annotation


# static fields
.field private static sGetWindowLayoutTypeMethod:Ljava/lang/reflect/Method;

.field private static sGetWindowLayoutTypeMethodAttempted:Z

.field private static sSetWindowLayoutTypeMethod:Ljava/lang/reflect/Method;

.field private static sSetWindowLayoutTypeMethodAttempted:Z


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getOverlapAnchor(Landroid/widget/PopupWindow;)Z
    .locals 1
    .param p1, "popupWindow"    # Landroid/widget/PopupWindow;

    .prologue
    .line 73
    const/4 v0, 0x0

    return v0
.end method

.method public getWindowLayoutType(Landroid/widget/PopupWindow;)I
    .locals 6
    .param p1, "popupWindow"    # Landroid/widget/PopupWindow;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 100
    sget-boolean v1, Landroid/support/v4/widget/PopupWindowCompat$BasePopupWindowImpl;->sGetWindowLayoutTypeMethodAttempted:Z

    if-nez v1, :cond_0

    .line 102
    :try_start_0
    const-class v1, Landroid/widget/PopupWindow;

    .line 103
    const-string/jumbo v2, "getWindowLayoutType"

    .line 102
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Landroid/support/v4/widget/PopupWindowCompat$BasePopupWindowImpl;->sGetWindowLayoutTypeMethod:Ljava/lang/reflect/Method;

    .line 104
    sget-object v1, Landroid/support/v4/widget/PopupWindowCompat$BasePopupWindowImpl;->sGetWindowLayoutTypeMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 108
    :goto_0
    sput-boolean v5, Landroid/support/v4/widget/PopupWindowCompat$BasePopupWindowImpl;->sGetWindowLayoutTypeMethodAttempted:Z

    .line 111
    :cond_0
    sget-object v1, Landroid/support/v4/widget/PopupWindowCompat$BasePopupWindowImpl;->sGetWindowLayoutTypeMethod:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_1

    .line 113
    :try_start_1
    sget-object v1, Landroid/support/v4/widget/PopupWindowCompat$BasePopupWindowImpl;->sGetWindowLayoutTypeMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    return v1

    .line 114
    :catch_0
    move-exception v0

    .line 118
    :cond_1
    return v4

    .line 105
    :catch_1
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public setOverlapAnchor(Landroid/widget/PopupWindow;Z)V
    .locals 0
    .param p1, "popupWindow"    # Landroid/widget/PopupWindow;
    .param p2, "overlapAnchor"    # Z

    .prologue
    .line 67
    return-void
.end method

.method public setWindowLayoutType(Landroid/widget/PopupWindow;I)V
    .locals 7
    .param p1, "popupWindow"    # Landroid/widget/PopupWindow;
    .param p2, "layoutType"    # I

    .prologue
    const/4 v6, 0x1

    .line 78
    sget-boolean v1, Landroid/support/v4/widget/PopupWindowCompat$BasePopupWindowImpl;->sSetWindowLayoutTypeMethodAttempted:Z

    if-nez v1, :cond_0

    .line 80
    :try_start_0
    const-class v1, Landroid/widget/PopupWindow;

    .line 81
    const-string/jumbo v2, "setWindowLayoutType"

    .line 80
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    .line 81
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 80
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Landroid/support/v4/widget/PopupWindowCompat$BasePopupWindowImpl;->sSetWindowLayoutTypeMethod:Ljava/lang/reflect/Method;

    .line 82
    sget-object v1, Landroid/support/v4/widget/PopupWindowCompat$BasePopupWindowImpl;->sSetWindowLayoutTypeMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 86
    :goto_0
    sput-boolean v6, Landroid/support/v4/widget/PopupWindowCompat$BasePopupWindowImpl;->sSetWindowLayoutTypeMethodAttempted:Z

    .line 89
    :cond_0
    sget-object v1, Landroid/support/v4/widget/PopupWindowCompat$BasePopupWindowImpl;->sSetWindowLayoutTypeMethod:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_1

    .line 91
    :try_start_1
    sget-object v1, Landroid/support/v4/widget/PopupWindowCompat$BasePopupWindowImpl;->sSetWindowLayoutTypeMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 77
    :cond_1
    :goto_1
    return-void

    .line 92
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    goto :goto_1

    .line 83
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .restart local v0    # "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public showAsDropDown(Landroid/widget/PopupWindow;Landroid/view/View;III)V
    .locals 3
    .param p1, "popup"    # Landroid/widget/PopupWindow;
    .param p2, "anchor"    # Landroid/view/View;
    .param p3, "xoff"    # I
    .param p4, "yoff"    # I
    .param p5, "gravity"    # I

    .prologue
    .line 57
    invoke-static {p2}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v1

    .line 56
    invoke-static {p5, v1}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v1

    and-int/lit8 v0, v1, 0x7

    .line 58
    .local v0, "hgrav":I
    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 61
    invoke-virtual {p1}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v1

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    sub-int/2addr p3, v1

    .line 63
    :cond_0
    invoke-virtual {p1, p2, p3, p4}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 55
    return-void
.end method
