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

.field private final synthetic val$finalSize:Landroid/util/Size;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery2/media/TempPhotoMedia$4;Landroid/util/Size;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/oneplus/gallery2/media/TempPhotoMedia$4$1;->this$1:Lcom/oneplus/gallery2/media/TempPhotoMedia$4;

    iput-object p2, p0, Lcom/oneplus/gallery2/media/TempPhotoMedia$4$1;->val$finalSize:Landroid/util/Size;

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 171
    iget-object v0, p0, Lcom/oneplus/gallery2/media/TempPhotoMedia$4$1;->this$1:Lcom/oneplus/gallery2/media/TempPhotoMedia$4;

    invoke-static {v0}, Lcom/oneplus/gallery2/media/TempPhotoMedia$4;->access$0(Lcom/oneplus/gallery2/media/TempPhotoMedia$4;)Lcom/oneplus/gallery2/media/TempPhotoMedia;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/gallery2/media/TempPhotoMedia$4$1;->val$finalSize:Landroid/util/Size;

    invoke-static {v0, v1}, Lcom/oneplus/gallery2/media/TempPhotoMedia;->access$2(Lcom/oneplus/gallery2/media/TempPhotoMedia;Landroid/util/Size;)V

    .line 172
    return-void
.end method
