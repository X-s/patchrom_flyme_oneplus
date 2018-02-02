.class final Lcom/oneplus/drawable/MovieDrawable$DecodeTask;
.super Ljava/lang/Object;
.source "MovieDrawable.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/drawable/MovieDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DecodeTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/drawable/MovieDrawable;


# direct methods
.method private constructor <init>(Lcom/oneplus/drawable/MovieDrawable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/drawable/MovieDrawable;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/oneplus/drawable/MovieDrawable$DecodeTask;->this$0:Lcom/oneplus/drawable/MovieDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oneplus/drawable/MovieDrawable;Lcom/oneplus/drawable/MovieDrawable$DecodeTask;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/drawable/MovieDrawable;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/drawable/MovieDrawable$DecodeTask;-><init>(Lcom/oneplus/drawable/MovieDrawable;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 76
    iget-object v2, p0, Lcom/oneplus/drawable/MovieDrawable$DecodeTask;->this$0:Lcom/oneplus/drawable/MovieDrawable;

    invoke-static {v2}, Lcom/oneplus/drawable/MovieDrawable;->-wrap0(Lcom/oneplus/drawable/MovieDrawable;)Landroid/graphics/Movie;

    move-result-object v0

    .line 77
    .local v0, "movie":Landroid/graphics/Movie;
    if-nez v0, :cond_0

    .line 79
    const-string/jumbo v2, "MovieDrawable"

    const-string/jumbo v3, "run() - movie is null"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    return-void

    .line 83
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Movie;->duration()I

    move-result v1

    .line 84
    .local v1, "movieDuration":I
    const-string/jumbo v2, "MovieDrawable"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "run() - movie duration is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    const/16 v2, 0x1f4

    if-gt v1, v2, :cond_2

    .line 88
    iget-object v2, p0, Lcom/oneplus/drawable/MovieDrawable$DecodeTask;->this$0:Lcom/oneplus/drawable/MovieDrawable;

    invoke-static {v2}, Lcom/oneplus/drawable/MovieDrawable;->-wrap1(Lcom/oneplus/drawable/MovieDrawable;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 91
    iget-object v2, p0, Lcom/oneplus/drawable/MovieDrawable$DecodeTask;->this$0:Lcom/oneplus/drawable/MovieDrawable;

    invoke-static {v2}, Lcom/oneplus/drawable/MovieDrawable;->-wrap2(Lcom/oneplus/drawable/MovieDrawable;)V

    .line 74
    :cond_1
    :goto_0
    return-void

    .line 96
    :cond_2
    iget-object v2, p0, Lcom/oneplus/drawable/MovieDrawable$DecodeTask;->this$0:Lcom/oneplus/drawable/MovieDrawable;

    invoke-static {v2}, Lcom/oneplus/drawable/MovieDrawable;->-get0(Lcom/oneplus/drawable/MovieDrawable;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x2710

    invoke-static {v2, v3, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method
