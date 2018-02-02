.class public Lcom/oneplus/camera/CameraEventArgs;
.super Lcom/oneplus/base/EventArgs;
.source "CameraEventArgs.java"


# instance fields
.field private final m_Camera:Lcom/oneplus/camera/Camera;


# direct methods
.method public constructor <init>(Lcom/oneplus/camera/Camera;)V
    .locals 0
    .param p1, "camera"    # Lcom/oneplus/camera/Camera;

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/oneplus/base/EventArgs;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/oneplus/camera/CameraEventArgs;->m_Camera:Lcom/oneplus/camera/Camera;

    .line 18
    return-void
.end method


# virtual methods
.method public final getCamera()Lcom/oneplus/camera/Camera;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/oneplus/camera/CameraEventArgs;->m_Camera:Lcom/oneplus/camera/Camera;

    return-object v0
.end method
