.class Lcom/oneplus/drawable/ProgressiveBitmapDrawable$2;
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
    .param p1, "this$0"    # Lcom/oneplus/drawable/ProgressiveBitmapDrawable;

    .prologue
    .line 874
    iput-object p1, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable$2;->this$0:Lcom/oneplus/drawable/ProgressiveBitmapDrawable;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 879
    iget-object v0, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable$2;->this$0:Lcom/oneplus/drawable/ProgressiveBitmapDrawable;

    invoke-static {v0, p1}, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->-wrap2(Lcom/oneplus/drawable/ProgressiveBitmapDrawable;Landroid/os/Message;)V

    .line 877
    return-void
.end method
