.class Lcom/oneplus/drawable/ProgressiveBitmapDrawable$1;
.super Ljava/lang/Object;
.source "ProgressiveBitmapDrawable.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/drawable/ProgressiveBitmapDrawable;
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
    .line 96
    iput-object p1, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable$1;->this$0:Lcom/oneplus/drawable/ProgressiveBitmapDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable$1;->this$0:Lcom/oneplus/drawable/ProgressiveBitmapDrawable;

    invoke-virtual {v0}, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->invalidateSelf()V

    .line 99
    return-void
.end method
