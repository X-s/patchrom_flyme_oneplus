.class public Lcom/oneplus/screenshot/longshot/task/CaptureTask;
.super Landroid/os/AsyncTask;
.source "CaptureTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/screenshot/longshot/task/CaptureTask$OnCaptureListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEGREE_0:I = 0x0

.field private static final DEGREE_180:I = 0xb4

.field private static final DEGREE_270:I = 0x5a

.field private static final DEGREE_90:I = 0x10e

.field private static final TAG:Ljava/lang/String; = "Longshot.CaptureTask"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mListener:Lcom/oneplus/screenshot/longshot/task/CaptureTask$OnCaptureListener;

.field private mMatrix:Landroid/graphics/Matrix;

.field private mRotation:I


# direct methods
.method public constructor <init>(Lcom/oneplus/screenshot/longshot/task/CaptureTask$OnCaptureListener;Landroid/content/Context;Landroid/util/DisplayMetrics;)V
    .locals 2
    .param p1, "listener"    # Lcom/oneplus/screenshot/longshot/task/CaptureTask$OnCaptureListener;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "displayMetrics"    # Landroid/util/DisplayMetrics;

    .prologue
    const/4 v1, 0x0

    .line 40
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 30
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/task/CaptureTask;->mMatrix:Landroid/graphics/Matrix;

    .line 31
    iput-object v1, p0, Lcom/oneplus/screenshot/longshot/task/CaptureTask;->mContext:Landroid/content/Context;

    .line 32
    iput-object v1, p0, Lcom/oneplus/screenshot/longshot/task/CaptureTask;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 33
    iput-object v1, p0, Lcom/oneplus/screenshot/longshot/task/CaptureTask;->mListener:Lcom/oneplus/screenshot/longshot/task/CaptureTask$OnCaptureListener;

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/screenshot/longshot/task/CaptureTask;->mRotation:I

    .line 41
    iput-object p1, p0, Lcom/oneplus/screenshot/longshot/task/CaptureTask;->mListener:Lcom/oneplus/screenshot/longshot/task/CaptureTask$OnCaptureListener;

    .line 42
    iput-object p2, p0, Lcom/oneplus/screenshot/longshot/task/CaptureTask;->mContext:Landroid/content/Context;

    .line 43
    iput-object p3, p0, Lcom/oneplus/screenshot/longshot/task/CaptureTask;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 44
    return-void
.end method

.method private getDegreesForRotation(I)I
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 96
    packed-switch p1, :pswitch_data_0

    .line 104
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 98
    :pswitch_0
    const/16 v0, 0x10e

    goto :goto_0

    .line 100
    :pswitch_1
    const/16 v0, 0xb4

    goto :goto_0

    .line 102
    :pswitch_2
    const/16 v0, 0x5a

    goto :goto_0

    .line 96
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getQuality(F)I
    .locals 1
    .param p1, "size"    # F

    .prologue
    .line 92
    float-to-int v0, p1

    return v0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Integer;)Landroid/graphics/Bitmap;
    .locals 12
    .param p1, "params"    # [Ljava/lang/Integer;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 51
    invoke-static {}, Lcom/oneplus/screenshot/util/Utils;->setThreadPriority()V

    .line 52
    aget-object v7, p1, v10

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    int-to-long v2, v7

    .line 53
    .local v2, "delay":J
    const-wide/16 v8, 0x0

    cmp-long v7, v2, v8

    if-lez v7, :cond_0

    .line 55
    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    :cond_0
    :goto_0
    const-string v7, "Longshot.CaptureTask"

    const-string v8, "start"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    const/4 v7, 0x2

    new-array v1, v7, [F

    iget-object v7, p0, Lcom/oneplus/screenshot/longshot/task/CaptureTask;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v7, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v7, v7

    aput v7, v1, v10

    iget-object v7, p0, Lcom/oneplus/screenshot/longshot/task/CaptureTask;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v7, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v7, v7

    aput v7, v1, v11

    .line 61
    .local v1, "dims":[F
    iget v7, p0, Lcom/oneplus/screenshot/longshot/task/CaptureTask;->mRotation:I

    invoke-direct {p0, v7}, Lcom/oneplus/screenshot/longshot/task/CaptureTask;->getDegreesForRotation(I)I

    move-result v0

    .line 62
    .local v0, "degree":I
    if-eqz v0, :cond_1

    .line 63
    iget-object v7, p0, Lcom/oneplus/screenshot/longshot/task/CaptureTask;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v7}, Landroid/graphics/Matrix;->reset()V

    .line 64
    iget-object v7, p0, Lcom/oneplus/screenshot/longshot/task/CaptureTask;->mMatrix:Landroid/graphics/Matrix;

    neg-int v8, v0

    int-to-float v8, v8

    invoke-virtual {v7, v8}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 65
    iget-object v7, p0, Lcom/oneplus/screenshot/longshot/task/CaptureTask;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v7, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 66
    aget v7, v1, v10

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    aput v7, v1, v10

    .line 67
    aget v7, v1, v11

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    aput v7, v1, v11

    .line 69
    :cond_1
    aget v7, v1, v10

    invoke-direct {p0, v7}, Lcom/oneplus/screenshot/longshot/task/CaptureTask;->getQuality(F)I

    move-result v6

    .line 70
    .local v6, "w":I
    aget v7, v1, v11

    invoke-direct {p0, v7}, Lcom/oneplus/screenshot/longshot/task/CaptureTask;->getQuality(F)I

    move-result v4

    .line 71
    .local v4, "h":I
    invoke-static {v6, v4}, Landroid/view/SurfaceControl;->screenshot(II)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 72
    .local v5, "screen":Landroid/graphics/Bitmap;
    const-string v7, "Longshot.CaptureTask"

    const-string v8, "capture done"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    return-object v5

    .line 56
    .end local v0    # "degree":I
    .end local v1    # "dims":[F
    .end local v4    # "h":I
    .end local v5    # "screen":Landroid/graphics/Bitmap;
    .end local v6    # "w":I
    :catch_0
    move-exception v7

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 15
    check-cast p1, [Ljava/lang/Integer;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/oneplus/screenshot/longshot/task/CaptureTask;->doInBackground([Ljava/lang/Integer;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 0

    .prologue
    .line 86
    return-void
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "result"    # Landroid/graphics/Bitmap;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/task/CaptureTask;->mListener:Lcom/oneplus/screenshot/longshot/task/CaptureTask$OnCaptureListener;

    if-eqz v0, :cond_0

    .line 79
    const-string v0, "Longshot.CaptureTask"

    const-string v1, "onCaptureFinished"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/task/CaptureTask;->mListener:Lcom/oneplus/screenshot/longshot/task/CaptureTask$OnCaptureListener;

    invoke-interface {v0, p1}, Lcom/oneplus/screenshot/longshot/task/CaptureTask$OnCaptureListener;->onCaptureFinished(Landroid/graphics/Bitmap;)V

    .line 82
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 15
    check-cast p1, Landroid/graphics/Bitmap;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/oneplus/screenshot/longshot/task/CaptureTask;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
