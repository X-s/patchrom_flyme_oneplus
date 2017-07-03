.class Lcom/oneplus/gallery2/media/TempPhotoMedia$4$1;
.super Ljava/lang/Object;
.source "TempPhotoMedia.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery2/media/TempPhotoMedia$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/gallery2/media/TempPhotoMedia$4;

.field final synthetic val$finalSize:Landroid/util/Size;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery2/media/TempPhotoMedia$4;Landroid/util/Size;)V
    .locals 0

    .prologue
    .line 141
    iput-object p1, p0, Lcom/oneplus/gallery2/media/TempPhotoMedia$4$1;->this$1:Lcom/oneplus/gallery2/media/TempPhotoMedia$4;

    iput-object p2, p0, Lcom/oneplus/gallery2/media/TempPhotoMedia$4$1;->val$finalSize:Landroid/util/Size;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 145
    iget-object v0, p0, Lcom/oneplus/gallery2/media/TempPhotoMedia$4$1;->this$1:Lcom/oneplus/gallery2/media/TempPhotoMedia$4;

    iget-object v0, v0, Lcom/oneplus/gallery2/media/TempPhotoMedia$4;->this$0:Lcom/oneplus/gallery2/media/TempPhotoMedia;

    iget-object v1, p0, Lcom/oneplus/gallery2/media/TempPhotoMedia$4$1;->val$finalSize:Landroid/util/Size;

    # invokes: Lcom/oneplus/gallery2/media/TempPhotoMedia;->onSizeObtained(Landroid/util/Size;)V
    invoke-static {v0, v1}, Lcom/oneplus/gallery2/media/TempPhotoMedia;->access$100(Lcom/oneplus/gallery2/media/TempPhotoMedia;Landroid/util/Size;)V

    .line 146
    return-void
.end method
