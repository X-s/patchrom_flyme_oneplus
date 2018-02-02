.class public Lcom/oneplus/camera/scene/SceneEventArgs;
.super Lcom/oneplus/base/EventArgs;
.source "SceneEventArgs.java"


# instance fields
.field private final m_Scene:Lcom/oneplus/camera/scene/Scene;


# direct methods
.method public constructor <init>(Lcom/oneplus/camera/scene/Scene;)V
    .locals 0
    .param p1, "scene"    # Lcom/oneplus/camera/scene/Scene;

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/oneplus/base/EventArgs;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/oneplus/camera/scene/SceneEventArgs;->m_Scene:Lcom/oneplus/camera/scene/Scene;

    .line 18
    return-void
.end method


# virtual methods
.method public final getScene()Lcom/oneplus/camera/scene/Scene;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/oneplus/camera/scene/SceneEventArgs;->m_Scene:Lcom/oneplus/camera/scene/Scene;

    return-object v0
.end method
