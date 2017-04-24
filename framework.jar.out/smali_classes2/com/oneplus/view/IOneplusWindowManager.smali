.class public interface abstract Lcom/oneplus/view/IOneplusWindowManager;
.super Ljava/lang/Object;
.source "IOneplusWindowManager.java"


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "come.oneplus.view.IOneplusWindowManager"

.field public static final GET_FOCUSED_WINDOW_FRAME:I = 0x2720

.field public static final ONEPLUS_CALL_TRANSACTION_INDEX:I = 0x2710

.field public static final ONEPLUS_FIRST_CALL_TRANSACTION:I = 0x2711


# virtual methods
.method public abstract getFocusedWindowFrame(Landroid/graphics/Rect;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
