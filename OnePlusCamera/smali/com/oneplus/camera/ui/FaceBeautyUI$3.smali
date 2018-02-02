.class Lcom/oneplus/camera/ui/FaceBeautyUI$3;
.super Ljava/lang/Object;
.source "FaceBeautyUI.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/ui/FaceBeautyUI;->onInitialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/ui/FaceBeautyUI;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/ui/FaceBeautyUI;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/ui/FaceBeautyUI;

    .prologue
    .line 169
    iput-object p1, p0, Lcom/oneplus/camera/ui/FaceBeautyUI$3;->this$0:Lcom/oneplus/camera/ui/FaceBeautyUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 3
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 185
    iget-object v1, p0, Lcom/oneplus/camera/ui/FaceBeautyUI$3;->this$0:Lcom/oneplus/camera/ui/FaceBeautyUI;

    invoke-static {v1}, Lcom/oneplus/camera/ui/FaceBeautyUI;->-get1(Lcom/oneplus/camera/ui/FaceBeautyUI;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 187
    iget-object v1, p0, Lcom/oneplus/camera/ui/FaceBeautyUI$3;->this$0:Lcom/oneplus/camera/ui/FaceBeautyUI;

    invoke-static {v1}, Lcom/oneplus/camera/ui/FaceBeautyUI;->-get0(Lcom/oneplus/camera/ui/FaceBeautyUI;)Lcom/oneplus/camera/scene/PhotoFaceBeautyScene;

    move-result-object v1

    sget-object v2, Lcom/oneplus/camera/scene/PhotoFaceBeautyScene;->PROP_FACE_BEAUTY_VALUE_LIST:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v1, v2}, Lcom/oneplus/camera/scene/PhotoFaceBeautyScene;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 188
    .local v0, "valueList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge p2, v1, :cond_0

    .line 189
    iget-object v2, p0, Lcom/oneplus/camera/ui/FaceBeautyUI$3;->this$0:Lcom/oneplus/camera/ui/FaceBeautyUI;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v1}, Lcom/oneplus/camera/ui/FaceBeautyUI;->-wrap0(Lcom/oneplus/camera/ui/FaceBeautyUI;I)V

    .line 182
    .end local v0    # "valueList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 178
    iget-object v0, p0, Lcom/oneplus/camera/ui/FaceBeautyUI$3;->this$0:Lcom/oneplus/camera/ui/FaceBeautyUI;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/oneplus/camera/ui/FaceBeautyUI;->-set1(Lcom/oneplus/camera/ui/FaceBeautyUI;Z)Z

    .line 177
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 173
    iget-object v0, p0, Lcom/oneplus/camera/ui/FaceBeautyUI$3;->this$0:Lcom/oneplus/camera/ui/FaceBeautyUI;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oneplus/camera/ui/FaceBeautyUI;->-set1(Lcom/oneplus/camera/ui/FaceBeautyUI;Z)Z

    .line 172
    return-void
.end method
