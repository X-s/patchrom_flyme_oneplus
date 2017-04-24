.class public final Lcom/oneplus/view/OneplusWindowManager;
.super Ljava/lang/Object;
.source "OneplusWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/view/OneplusWindowManager$LayoutParams;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "OneplusWindowManager"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method public static getFocusedWindowFrame(Landroid/graphics/Rect;)V
    .locals 2
    .param p0, "frame"    # Landroid/graphics/Rect;

    .prologue
    .line 24
    :try_start_0
    new-instance v0, Lcom/oneplus/view/IOneplusWindowManagerImpl;

    invoke-direct {v0}, Lcom/oneplus/view/IOneplusWindowManagerImpl;-><init>()V

    .line 25
    .local v0, "wmi":Lcom/oneplus/view/IOneplusWindowManagerImpl;
    invoke-virtual {v0, p0}, Lcom/oneplus/view/IOneplusWindowManagerImpl;->getFocusedWindowFrame(Landroid/graphics/Rect;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    .end local v0    # "wmi":Lcom/oneplus/view/IOneplusWindowManagerImpl;
    :goto_0
    return-void

    .line 26
    :catch_0
    move-exception v1

    goto :goto_0
.end method
