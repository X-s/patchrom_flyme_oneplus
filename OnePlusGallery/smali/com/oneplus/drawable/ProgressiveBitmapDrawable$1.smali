.class Lcom/oneplus/drawable/ProgressiveBitmapDrawable$1;
.super Landroid/os/Handler;
.source "ProgressiveBitmapDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->initialize(Ljava/lang/Object;Landroid/graphics/Bitmap$Config;Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/drawable/ProgressiveBitmapDrawable;


# direct methods
.method constructor <init>(Lcom/oneplus/drawable/ProgressiveBitmapDrawable;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable$1;->this$0:Lcom/oneplus/drawable/ProgressiveBitmapDrawable;

    .line 750
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 755
    iget-object v0, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable$1;->this$0:Lcom/oneplus/drawable/ProgressiveBitmapDrawable;

    # invokes: Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->handleMessage(Landroid/os/Message;)V
    invoke-static {v0, p1}, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->access$3(Lcom/oneplus/drawable/ProgressiveBitmapDrawable;Landroid/os/Message;)V

    .line 756
    return-void
.end method
