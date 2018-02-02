.class Lcom/oneplus/gallery2/media/TempVideoMedia$3$1;
.super Ljava/lang/Object;
.source "TempVideoMedia.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery2/media/TempVideoMedia$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/gallery2/media/TempVideoMedia$3;

.field private final synthetic val$duration:J

.field private final synthetic val$size:Landroid/util/Size;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery2/media/TempVideoMedia$3;JLandroid/util/Size;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/oneplus/gallery2/media/TempVideoMedia$3$1;->this$1:Lcom/oneplus/gallery2/media/TempVideoMedia$3;

    iput-wide p2, p0, Lcom/oneplus/gallery2/media/TempVideoMedia$3$1;->val$duration:J

    iput-object p4, p0, Lcom/oneplus/gallery2/media/TempVideoMedia$3$1;->val$size:Landroid/util/Size;

    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 219
    iget-object v0, p0, Lcom/oneplus/gallery2/media/TempVideoMedia$3$1;->this$1:Lcom/oneplus/gallery2/media/TempVideoMedia$3;

    invoke-static {v0}, Lcom/oneplus/gallery2/media/TempVideoMedia$3;->access$0(Lcom/oneplus/gallery2/media/TempVideoMedia$3;)Lcom/oneplus/gallery2/media/TempVideoMedia;

    move-result-object v0

    iget-wide v2, p0, Lcom/oneplus/gallery2/media/TempVideoMedia$3$1;->val$duration:J

    iget-object v1, p0, Lcom/oneplus/gallery2/media/TempVideoMedia$3$1;->val$size:Landroid/util/Size;

    invoke-static {v0, v2, v3, v1}, Lcom/oneplus/gallery2/media/TempVideoMedia;->access$5(Lcom/oneplus/gallery2/media/TempVideoMedia;JLandroid/util/Size;)V

    .line 220
    return-void
.end method
