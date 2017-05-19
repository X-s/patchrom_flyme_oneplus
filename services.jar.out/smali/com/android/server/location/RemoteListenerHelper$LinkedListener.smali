.class Lcom/android/server/location/RemoteListenerHelper$LinkedListener;
.super Ljava/lang/Object;
.source "RemoteListenerHelper.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/RemoteListenerHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LinkedListener"
.end annotation


# instance fields
.field private mBlock:Z

.field private final mListener:Landroid/os/IInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT",
            "Listener;"
        }
    .end annotation
.end field

.field private mUid:I

.field final synthetic this$0:Lcom/android/server/location/RemoteListenerHelper;


# direct methods
.method public constructor <init>(Lcom/android/server/location/RemoteListenerHelper;Landroid/os/IInterface;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT",
            "Listener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 229
    .local p0, "this":Lcom/android/server/location/RemoteListenerHelper$LinkedListener;, "Lcom/android/server/location/RemoteListenerHelper<TTListener;>.LinkedListener;"
    .local p2, "listener":Landroid/os/IInterface;, "TTListener;"
    iput-object p1, p0, Lcom/android/server/location/RemoteListenerHelper$LinkedListener;->this$0:Lcom/android/server/location/RemoteListenerHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 228
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/location/RemoteListenerHelper$LinkedListener;->mBlock:Z

    .line 230
    iput-object p2, p0, Lcom/android/server/location/RemoteListenerHelper$LinkedListener;->mListener:Landroid/os/IInterface;

    .line 231
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    .prologue
    .line 240
    .local p0, "this":Lcom/android/server/location/RemoteListenerHelper$LinkedListener;, "Lcom/android/server/location/RemoteListenerHelper<TTListener;>.LinkedListener;"
    iget-object v0, p0, Lcom/android/server/location/RemoteListenerHelper$LinkedListener;->this$0:Lcom/android/server/location/RemoteListenerHelper;

    # getter for: Lcom/android/server/location/RemoteListenerHelper;->mTag:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/location/RemoteListenerHelper;->access$000(Lcom/android/server/location/RemoteListenerHelper;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Remote Listener died: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/location/RemoteListenerHelper$LinkedListener;->mListener:Landroid/os/IInterface;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    iget-object v0, p0, Lcom/android/server/location/RemoteListenerHelper$LinkedListener;->this$0:Lcom/android/server/location/RemoteListenerHelper;

    iget-object v1, p0, Lcom/android/server/location/RemoteListenerHelper$LinkedListener;->mListener:Landroid/os/IInterface;

    invoke-virtual {v0, v1}, Lcom/android/server/location/RemoteListenerHelper;->removeListener(Landroid/os/IInterface;)V

    .line 242
    return-void
.end method

.method public getUid()I
    .locals 1

    .prologue
    .line 248
    .local p0, "this":Lcom/android/server/location/RemoteListenerHelper$LinkedListener;, "Lcom/android/server/location/RemoteListenerHelper<TTListener;>.LinkedListener;"
    iget v0, p0, Lcom/android/server/location/RemoteListenerHelper$LinkedListener;->mUid:I

    return v0
.end method

.method public getUnderlyingListener()Landroid/os/IInterface;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT",
            "Listener;"
        }
    .end annotation

    .prologue
    .line 235
    .local p0, "this":Lcom/android/server/location/RemoteListenerHelper$LinkedListener;, "Lcom/android/server/location/RemoteListenerHelper<TTListener;>.LinkedListener;"
    iget-object v0, p0, Lcom/android/server/location/RemoteListenerHelper$LinkedListener;->mListener:Landroid/os/IInterface;

    return-object v0
.end method

.method public setUid(I)V
    .locals 0
    .param p1, "uid"    # I

    .prologue
    .line 244
    .local p0, "this":Lcom/android/server/location/RemoteListenerHelper$LinkedListener;, "Lcom/android/server/location/RemoteListenerHelper<TTListener;>.LinkedListener;"
    iput p1, p0, Lcom/android/server/location/RemoteListenerHelper$LinkedListener;->mUid:I

    .line 245
    return-void
.end method
