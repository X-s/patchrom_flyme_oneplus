.class final Lcom/oneplus/camera/ui/CaptureBar$ChangeSceneHandle;
.super Lcom/oneplus/base/Handle;
.source "CaptureBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/camera/ui/CaptureBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ChangeSceneHandle"
.end annotation


# instance fields
.field public scene:Lcom/oneplus/camera/scene/Scene;

.field final synthetic this$0:Lcom/oneplus/camera/ui/CaptureBar;


# direct methods
.method public constructor <init>(Lcom/oneplus/camera/ui/CaptureBar;Lcom/oneplus/camera/scene/Scene;)V
    .locals 2
    .param p1, "this$0"    # Lcom/oneplus/camera/ui/CaptureBar;
    .param p2, "previousScene"    # Lcom/oneplus/camera/scene/Scene;

    .prologue
    .line 252
    iput-object p1, p0, Lcom/oneplus/camera/ui/CaptureBar$ChangeSceneHandle;->this$0:Lcom/oneplus/camera/ui/CaptureBar;

    .line 254
    const-string/jumbo v0, "ChangeSceneHandle"

    invoke-direct {p0, v0}, Lcom/oneplus/base/Handle;-><init>(Ljava/lang/String;)V

    .line 255
    iput-object p2, p0, Lcom/oneplus/camera/ui/CaptureBar$ChangeSceneHandle;->scene:Lcom/oneplus/camera/scene/Scene;

    .line 256
    invoke-static {p1}, Lcom/oneplus/camera/ui/CaptureBar;->-wrap1(Lcom/oneplus/camera/ui/CaptureBar;)Lcom/oneplus/base/Settings;

    move-result-object v0

    const-string/jumbo v1, "CaptureBar.RestoreScene"

    invoke-virtual {v0, v1, p2}, Lcom/oneplus/base/Settings;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 252
    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    .prologue
    .line 284
    invoke-super {p0}, Lcom/oneplus/base/Handle;->closeDirectly()V

    .line 285
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar$ChangeSceneHandle;->this$0:Lcom/oneplus/camera/ui/CaptureBar;

    invoke-static {v0}, Lcom/oneplus/camera/ui/CaptureBar;->-wrap1(Lcom/oneplus/camera/ui/CaptureBar;)Lcom/oneplus/base/Settings;

    move-result-object v0

    const-string/jumbo v1, "CaptureBar.RestoreScene"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/base/Settings;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 282
    return-void
.end method

.method protected onClose(I)V
    .locals 3
    .param p1, "flags"    # I

    .prologue
    .line 262
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar$ChangeSceneHandle;->this$0:Lcom/oneplus/camera/ui/CaptureBar;

    invoke-static {v0}, Lcom/oneplus/camera/ui/CaptureBar;->-wrap2(Lcom/oneplus/camera/ui/CaptureBar;)Lcom/oneplus/camera/Camera;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/Camera;->PROP_LENS_FACING:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v1}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/Camera$LensFacing;->BACK:Lcom/oneplus/camera/Camera$LensFacing;

    if-ne v0, v1, :cond_0

    .line 264
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar$ChangeSceneHandle;->this$0:Lcom/oneplus/camera/ui/CaptureBar;

    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureBar$ChangeSceneHandle;->scene:Lcom/oneplus/camera/scene/Scene;

    invoke-static {v0, v1}, Lcom/oneplus/camera/ui/CaptureBar;->-wrap20(Lcom/oneplus/camera/ui/CaptureBar;Lcom/oneplus/camera/scene/Scene;)V

    .line 265
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar$ChangeSceneHandle;->this$0:Lcom/oneplus/camera/ui/CaptureBar;

    invoke-static {v0}, Lcom/oneplus/camera/ui/CaptureBar;->-wrap1(Lcom/oneplus/camera/ui/CaptureBar;)Lcom/oneplus/base/Settings;

    move-result-object v0

    const-string/jumbo v1, "CaptureBar.RestoreScene"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/base/Settings;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 260
    :cond_0
    return-void
.end method

.method public replaceScene(Lcom/oneplus/camera/scene/Scene;)V
    .locals 2
    .param p1, "replace"    # Lcom/oneplus/camera/scene/Scene;

    .prologue
    .line 271
    iput-object p1, p0, Lcom/oneplus/camera/ui/CaptureBar$ChangeSceneHandle;->scene:Lcom/oneplus/camera/scene/Scene;

    .line 272
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar$ChangeSceneHandle;->this$0:Lcom/oneplus/camera/ui/CaptureBar;

    invoke-static {v0}, Lcom/oneplus/camera/ui/CaptureBar;->-wrap1(Lcom/oneplus/camera/ui/CaptureBar;)Lcom/oneplus/base/Settings;

    move-result-object v0

    const-string/jumbo v1, "CaptureBar.RestoreScene"

    invoke-virtual {v0, v1, p1}, Lcom/oneplus/base/Settings;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 269
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 279
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/oneplus/base/Handle;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "{ Reason = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar$ChangeSceneHandle;->scene:Lcom/oneplus/camera/scene/Scene;

    sget-object v2, Lcom/oneplus/camera/scene/Scene;->PROP_ID:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v2}, Lcom/oneplus/camera/scene/Scene;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
