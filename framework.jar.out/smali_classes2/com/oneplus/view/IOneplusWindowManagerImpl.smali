.class public Lcom/oneplus/view/IOneplusWindowManagerImpl;
.super Ljava/lang/Object;
.source "IOneplusWindowManagerImpl.java"

# interfaces
.implements Lcom/oneplus/view/IOneplusWindowManager;


# static fields
.field private static final TAG:Ljava/lang/String; = "IOneplusWindowManagerImpl"


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/view/IOneplusWindowManagerImpl;->mRemote:Landroid/os/IBinder;

    .line 22
    const-string v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/view/IOneplusWindowManagerImpl;->mRemote:Landroid/os/IBinder;

    .line 23
    return-void
.end method


# virtual methods
.method public getFocusedWindowFrame(Landroid/graphics/Rect;)V
    .locals 5
    .param p1, "frame"    # Landroid/graphics/Rect;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 29
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 30
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 32
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "come.oneplus.view.IOneplusWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 33
    if-eqz p1, :cond_1

    .line 34
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 35
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 39
    :goto_0
    iget-object v2, p0, Lcom/oneplus/view/IOneplusWindowManagerImpl;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2720

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 40
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 41
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    .line 42
    invoke-virtual {p1, v1}, Landroid/graphics/Rect;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 46
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 48
    return-void

    .line 37
    :cond_1
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 45
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 46
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method
