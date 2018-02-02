.class Lcom/amap/api/mapcore2d/bx;
.super Ljava/lang/Object;
.source "UiSettingsDelegateImp.java"

# interfaces
.implements Lcom/amap/api/mapcore2d/ak;


# instance fields
.field private a:Lcom/amap/api/mapcore2d/w;

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:I

.field private i:I

.field private final j:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/amap/api/mapcore2d/w;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-boolean v1, p0, Lcom/amap/api/mapcore2d/bx;->b:Z

    .line 12
    iput-boolean v0, p0, Lcom/amap/api/mapcore2d/bx;->c:Z

    .line 13
    iput-boolean v1, p0, Lcom/amap/api/mapcore2d/bx;->d:Z

    .line 14
    iput-boolean v1, p0, Lcom/amap/api/mapcore2d/bx;->e:Z

    .line 15
    iput-boolean v1, p0, Lcom/amap/api/mapcore2d/bx;->f:Z

    .line 16
    iput-boolean v0, p0, Lcom/amap/api/mapcore2d/bx;->g:Z

    .line 17
    iput v0, p0, Lcom/amap/api/mapcore2d/bx;->h:I

    .line 18
    iput v0, p0, Lcom/amap/api/mapcore2d/bx;->i:I

    .line 25
    new-instance v0, Lcom/amap/api/mapcore2d/bx$1;

    invoke-direct {v0, p0}, Lcom/amap/api/mapcore2d/bx$1;-><init>(Lcom/amap/api/mapcore2d/bx;)V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/bx;->j:Landroid/os/Handler;

    .line 58
    iput-object p1, p0, Lcom/amap/api/mapcore2d/bx;->a:Lcom/amap/api/mapcore2d/w;

    .line 59
    return-void
.end method

.method static synthetic a(Lcom/amap/api/mapcore2d/bx;)Lcom/amap/api/mapcore2d/w;
    .locals 1

    .prologue
    .line 9
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bx;->a:Lcom/amap/api/mapcore2d/w;

    return-object v0
.end method

.method static synthetic b(Lcom/amap/api/mapcore2d/bx;)Z
    .locals 1

    .prologue
    .line 9
    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/bx;->e:Z

    return v0
.end method

.method static synthetic c(Lcom/amap/api/mapcore2d/bx;)Z
    .locals 1

    .prologue
    .line 9
    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/bx;->g:Z

    return v0
.end method

.method static synthetic d(Lcom/amap/api/mapcore2d/bx;)Z
    .locals 1

    .prologue
    .line 9
    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/bx;->f:Z

    return v0
.end method

.method static synthetic e(Lcom/amap/api/mapcore2d/bx;)Z
    .locals 1

    .prologue
    .line 9
    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/bx;->c:Z

    return v0
.end method


# virtual methods
.method public a(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 109
    iput p1, p0, Lcom/amap/api/mapcore2d/bx;->h:I

    .line 110
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bx;->a:Lcom/amap/api/mapcore2d/w;

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore2d/w;->b(I)V

    .line 111
    return-void
.end method

.method public a(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 63
    iput-boolean p1, p0, Lcom/amap/api/mapcore2d/bx;->g:Z

    .line 64
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bx;->j:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 66
    return-void
.end method

.method public a()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 121
    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/bx;->g:Z

    return v0
.end method

.method public b(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 115
    iput p1, p0, Lcom/amap/api/mapcore2d/bx;->i:I

    .line 116
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bx;->a:Lcom/amap/api/mapcore2d/w;

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore2d/w;->c(I)V

    .line 117
    return-void
.end method

.method public b(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 70
    iput-boolean p1, p0, Lcom/amap/api/mapcore2d/bx;->e:Z

    .line 71
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bx;->j:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 73
    return-void
.end method

.method public b()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 126
    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/bx;->e:Z

    return v0
.end method

.method public c(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 77
    iput-boolean p1, p0, Lcom/amap/api/mapcore2d/bx;->f:Z

    .line 78
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bx;->j:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 80
    return-void
.end method

.method public c()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 131
    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/bx;->f:Z

    return v0
.end method

.method public d(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 85
    iput-boolean p1, p0, Lcom/amap/api/mapcore2d/bx;->c:Z

    .line 86
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bx;->j:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 88
    return-void
.end method

.method public d()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 136
    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/bx;->c:Z

    return v0
.end method

.method public e(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 93
    iput-boolean p1, p0, Lcom/amap/api/mapcore2d/bx;->b:Z

    .line 94
    return-void
.end method

.method public e()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 141
    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/bx;->b:Z

    return v0
.end method

.method public f(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 98
    iput-boolean p1, p0, Lcom/amap/api/mapcore2d/bx;->d:Z

    .line 99
    return-void
.end method

.method public f()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 146
    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/bx;->d:Z

    return v0
.end method

.method public g()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 151
    iget v0, p0, Lcom/amap/api/mapcore2d/bx;->h:I

    return v0
.end method

.method public g(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 103
    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore2d/bx;->f(Z)V

    .line 104
    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore2d/bx;->e(Z)V

    .line 105
    return-void
.end method

.method public h()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 156
    iget v0, p0, Lcom/amap/api/mapcore2d/bx;->i:I

    return v0
.end method
