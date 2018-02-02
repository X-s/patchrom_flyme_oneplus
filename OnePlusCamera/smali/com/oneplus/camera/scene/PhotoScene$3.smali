.class Lcom/oneplus/camera/scene/PhotoScene$3;
.super Ljava/lang/Object;
.source "PhotoScene.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/scene/PhotoScene;-><init>(Lcom/oneplus/camera/CameraActivity;Ljava/lang/String;Ljava/lang/Integer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/scene/PhotoScene;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/scene/PhotoScene;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/scene/PhotoScene;

    .prologue
    .line 170
    iput-object p1, p0, Lcom/oneplus/camera/scene/PhotoScene$3;->this$0:Lcom/oneplus/camera/scene/PhotoScene;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/oneplus/camera/scene/PhotoScene$3;->this$0:Lcom/oneplus/camera/scene/PhotoScene;

    invoke-static {v0}, Lcom/oneplus/camera/scene/PhotoScene;->-wrap2(Lcom/oneplus/camera/scene/PhotoScene;)V

    .line 173
    return-void
.end method
