.class public Lcom/netease/filterenginelibrary/gpuimage/M;
.super Lcom/netease/filterenginelibrary/gpuimage/W;


# static fields
.field public static final a:Ljava/lang/String;

.field private static final p:Ljava/lang/String; = "qazwsxe1crfvtgbyhnu0mkiOpljVgdty"


# instance fields
.field private n:F

.field private o:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/netease/filterenginelibrary/gpuimage/FilterNativeLibrary;->stringLookupFragmentShader()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/filterenginelibrary/gpuimage/ai;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netease/filterenginelibrary/gpuimage/M;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    sget-object v0, Lcom/netease/filterenginelibrary/gpuimage/M;->a:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/netease/filterenginelibrary/gpuimage/W;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;FI)V
    .locals 3

    sget-object v0, Lcom/netease/filterenginelibrary/gpuimage/M;->a:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/netease/filterenginelibrary/gpuimage/W;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    const/4 v1, 0x0

    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netease/filterenginelibrary/gpuimage/M;->a(Landroid/graphics/Bitmap;)V

    :goto_0
    iput p2, p0, Lcom/netease/filterenginelibrary/gpuimage/M;->n:F

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/netease/filterenginelibrary/gpuimage/M;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/filterenginelibrary/gpuimage/a;->b(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netease/filterenginelibrary/gpuimage/M;->a(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_0

    const/16 v0, 0x3e8

    const/16 v1, 0x429

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    const-string v1, "qazwsxe1crfvtgbyhnu0mkiOpljVgdty"

    invoke-static {v0, v1}, Lcom/netease/filterenginelibrary/gpuimage/ai;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, "filterEngineSDK"

    const-string v1, "resource compile failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 2

    invoke-super {p0}, Lcom/netease/filterenginelibrary/gpuimage/W;->a()V

    iget v0, p0, Lcom/netease/filterenginelibrary/gpuimage/M;->e:I

    const-string v1, "ratio"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/netease/filterenginelibrary/gpuimage/M;->o:I

    iget v0, p0, Lcom/netease/filterenginelibrary/gpuimage/M;->o:I

    iget v1, p0, Lcom/netease/filterenginelibrary/gpuimage/M;->n:F

    invoke-virtual {p0, v0, v1}, Lcom/netease/filterenginelibrary/gpuimage/M;->a(IF)V

    return-void
.end method

.method public a(F)V
    .locals 2

    iput p1, p0, Lcom/netease/filterenginelibrary/gpuimage/M;->n:F

    iget v0, p0, Lcom/netease/filterenginelibrary/gpuimage/M;->o:I

    iget v1, p0, Lcom/netease/filterenginelibrary/gpuimage/M;->n:F

    invoke-virtual {p0, v0, v1}, Lcom/netease/filterenginelibrary/gpuimage/M;->a(IF)V

    return-void
.end method
