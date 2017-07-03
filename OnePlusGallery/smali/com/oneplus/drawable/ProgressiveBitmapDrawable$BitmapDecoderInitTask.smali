.class final Lcom/oneplus/drawable/ProgressiveBitmapDrawable$BitmapDecoderInitTask;
.super Ljava/lang/Object;
.source "ProgressiveBitmapDrawable.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/drawable/ProgressiveBitmapDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BitmapDecoderInitTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/drawable/ProgressiveBitmapDrawable;


# direct methods
.method private constructor <init>(Lcom/oneplus/drawable/ProgressiveBitmapDrawable;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable$BitmapDecoderInitTask;->this$0:Lcom/oneplus/drawable/ProgressiveBitmapDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oneplus/drawable/ProgressiveBitmapDrawable;Lcom/oneplus/drawable/ProgressiveBitmapDrawable$BitmapDecoderInitTask;)V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/oneplus/drawable/ProgressiveBitmapDrawable$BitmapDecoderInitTask;-><init>(Lcom/oneplus/drawable/ProgressiveBitmapDrawable;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable$BitmapDecoderInitTask;->this$0:Lcom/oneplus/drawable/ProgressiveBitmapDrawable;

    # invokes: Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->initializeBitmapDecoder()V
    invoke-static {v0}, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->access$1(Lcom/oneplus/drawable/ProgressiveBitmapDrawable;)V

    .line 105
    return-void
.end method
