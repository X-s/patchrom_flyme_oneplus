.class public Lcom/netease/filterenginelibrary/gpuimage/GPUImageView;
.super Lcom/netease/filterenginelibrary/gpuimage/c;


# static fields
.field private static synthetic l:[I

.field private static synthetic m:[I


# instance fields
.field private a:Lcom/netease/filterenginelibrary/gpuimage/r;

.field private b:Lcom/netease/filterenginelibrary/gpuimage/y;

.field private c:F

.field private d:I

.field private e:Landroid/net/Uri;

.field private f:Landroid/content/Context;

.field private g:Landroid/graphics/Bitmap;

.field private h:Lcom/netease/filterenginelibrary/gpuimage/FilterMenu;

.field private i:Lcom/netease/filterenginelibrary/gpuimage/FilterType;

.field private j:F

.field private k:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/netease/filterenginelibrary/gpuimage/c;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/netease/filterenginelibrary/gpuimage/GPUImageView;->b:Lcom/netease/filterenginelibrary/gpuimage/y;

    const/4 v0, 0x0

    iput v0, p0, Lcom/netease/filterenginelibrary/gpuimage/GPUImageView;->c:F

    iput v1, p0, Lcom/netease/filterenginelibrary/gpuimage/GPUImageView;->d:I

    iput-object v2, p0, Lcom/netease/filterenginelibrary/gpuimage/GPUImageView;->e:Landroid/net/Uri;

    sget-object v0, Lcom/netease/filterenginelibrary/gpuimage/FilterType;->NORMAL:Lcom/netease/filterenginelibrary/gpuimage/FilterType;

    iput-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/GPUImageView;->i:Lcom/netease/filterenginelibrary/gpuimage/FilterType;

    iput-boolean v1, p0, Lcom/netease/filterenginelibrary/gpuimage/GPUImageView;->k:Z

    invoke-direct {p0, p1}, Lcom/netease/filterenginelibrary/gpuimage/GPUImageView;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Lcom/netease/filterenginelibrary/gpuimage/c;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v2, p0, Lcom/netease/filterenginelibrary/gpuimage/GPUImageView;->b:Lcom/netease/filterenginelibrary/gpuimage/y;

    const/4 v0, 0x0

    iput v0, p0, Lcom/netease/filterenginelibrary/gpuimage/GPUImageView;->c:F

    iput v1, p0, Lcom/netease/filterenginelibrary/gpuimage/GPUImageView;->d:I

    iput-object v2, p0, Lcom/netease/filterenginelibrary/gpuimage/GPUImageView;->e:Landroid/net/Uri;

    sget-object v0, Lcom/netease/filterenginelibrary/gpuimage/FilterType;->NORMAL:Lcom/netease/filterenginelibrary/gpuimage/FilterType;

    iput-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/GPUImageView;->i:Lcom/netease/filterenginelibrary/gpuimage/FilterType;

    iput-boolean v1, p0, Lcom/netease/filterenginelibrary/gpuimage/GPUImageView;->k:Z

    invoke-direct {p0, p1}, Lcom/netease/filterenginelibrary/gpuimage/GPUImageView;->a(Landroid/content/Context;)V

    return-void
.end method

.method private a(Landroid/net/Uri;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "http"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "https"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    new-instance v1, Ljava/net/URL;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v1

    :goto_0
    const/4 v2, 0x0

    invoke-static {v1, v2, p2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_1
    :goto_1
    return-object v0

    :cond_2
    invoke-virtual {p0}, Lcom/netease/filterenginelibrary/gpuimage/GPUImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v2, "LOFTCAM"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method protected static a(Lcom/netease/filterenginelibrary/gpuimage/FilterType;F)Lcom/netease/filterenginelibrary/gpuimage/y;
    .locals 3

    const/4 v2, 0x1

    invoke-static {}, Lcom/netease/filterenginelibrary/gpuimage/GPUImageView;->l()[I

    move-result-object v0

    invoke-virtual {p0}, Lcom/netease/filterenginelibrary/gpuimage/FilterType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No filter of that type!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    new-instance v0, Lcom/netease/filterenginelibrary/gpuimage/y;

    invoke-direct {v0}, Lcom/netease/filterenginelibrary/gpuimage/y;-><init>()V

    :goto_0
    return-object v0

    :pswitch_2
    new-instance v0, Lcom/netease/filterenginelibrary/gpuimage/M;

    const-string v1, "/assets/res/temperaturem.jpg"

    invoke-direct {v0, v1, p1, v2}, Lcom/netease/filterenginelibrary/gpuimage/M;-><init>(Ljava/lang/String;FI)V

    goto :goto_0

    :pswitch_3
    new-instance v0, Lcom/netease/filterenginelibrary/gpuimage/M;

    const-string v1, "/assets/res/temperaturep.jpg"

    invoke-direct {v0, v1, p1, v2}, Lcom/netease/filterenginelibrary/gpuimage/M;-><init>(Ljava/lang/String;FI)V

    goto :goto_0

    :pswitch_4
    new-instance v0, Lcom/netease/filterenginelibrary/gpuimage/U;

    invoke-direct {v0, p1}, Lcom/netease/filterenginelibrary/gpuimage/U;-><init>(F)V

    goto :goto_0

    :pswitch_5
    new-instance v0, Lcom/netease/filterenginelibrary/gpuimage/M;

    const-string v1, "/assets/res/exposurem.jpg"

    invoke-direct {v0, v1, p1, v2}, Lcom/netease/filterenginelibrary/gpuimage/M;-><init>(Ljava/lang/String;FI)V

    goto :goto_0

    :pswitch_6
    new-instance v0, Lcom/netease/filterenginelibrary/gpuimage/M;

    const-string v1, "/assets/res/exposurep.jpg"

    invoke-direct {v0, v1, p1, v2}, Lcom/netease/filterenginelibrary/gpuimage/M;-><init>(Ljava/lang/String;FI)V

    goto :goto_0

    :pswitch_7
    new-instance v0, Lcom/netease/filterenginelibrary/gpuimage/M;

    const-string v1, "/assets/res/contrastm.jpg"

    invoke-direct {v0, v1, p1, v2}, Lcom/netease/filterenginelibrary/gpuimage/M;-><init>(Ljava/lang/String;FI)V

    goto :goto_0

    :pswitch_8
    new-instance v0, Lcom/netease/filterenginelibrary/gpuimage/M;

    const-string v1, "/assets/res/contrastp.jpg"

    invoke-direct {v0, v1, p1, v2}, Lcom/netease/filterenginelibrary/gpuimage/M;-><init>(Ljava/lang/String;FI)V

    goto :goto_0

    :pswitch_9
    new-instance v0, Lcom/netease/filterenginelibrary/gpuimage/M;

    const-string v1, "/assets/res/fade.jpg"

    invoke-direct {v0, v1, p1, v2}, Lcom/netease/filterenginelibrary/gpuimage/M;-><init>(Ljava/lang/String;FI)V

    goto :goto_0

    :pswitch_a
    new-instance v0, Lcom/netease/filterenginelibrary/gpuimage/V;

    const v1, 0x3ecccccd    # 0.4f

    mul-float/2addr v1, p1

    invoke-direct {v0, v1}, Lcom/netease/filterenginelibrary/gpuimage/V;-><init>(F)V

    goto :goto_0

    :pswitch_b
    new-instance v0, Lcom/netease/filterenginelibrary/gpuimage/M;

    const-string v1, "/assets/res/clarityp.jpg"

    invoke-direct {v0, v1, p1, v2}, Lcom/netease/filterenginelibrary/gpuimage/M;-><init>(Ljava/lang/String;FI)V

    goto :goto_0

    :pswitch_c
    new-instance v0, Lcom/netease/filterenginelibrary/gpuimage/x;

    const-string v1, "/assets/res/grain.jpg"

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v2, p1

    invoke-direct {v0, v1, v2}, Lcom/netease/filterenginelibrary/gpuimage/x;-><init>(Ljava/lang/String;F)V

    goto :goto_0

    :pswitch_d
    new-instance v0, Lcom/netease/filterenginelibrary/gpuimage/N;

    const-string v1, "/assets/res/vignette.jpg"

    invoke-direct {v0, v1, p1}, Lcom/netease/filterenginelibrary/gpuimage/N;-><init>(Ljava/lang/String;F)V

    goto :goto_0

    :pswitch_e
    new-instance v0, Lcom/netease/filterenginelibrary/gpuimage/M;

    const-string v1, "/assets/res/highlight.jpg"

    invoke-direct {v0, v1, p1, v2}, Lcom/netease/filterenginelibrary/gpuimage/M;-><init>(Ljava/lang/String;FI)V

    goto :goto_0

    :pswitch_f
    new-instance v0, Lcom/netease/filterenginelibrary/gpuimage/M;

    const-string v1, "/assets/res/darkness.jpg"

    invoke-direct {v0, v1, p1, v2}, Lcom/netease/filterenginelibrary/gpuimage/M;-><init>(Ljava/lang/String;FI)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_b
        :pswitch_a
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_0
        :pswitch_f
        :pswitch_0
        :pswitch_9
    .end packed-switch
.end method

.method protected static a(Ljava/lang/String;F)Lcom/netease/filterenginelibrary/gpuimage/y;
    .locals 2

    if-eqz p0, :cond_0

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "origin"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Lcom/netease/filterenginelibrary/gpuimage/y;

    invoke-direct {v0}, Lcom/netease/filterenginelibrary/gpuimage/y;-><init>()V

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/netease/filterenginelibrary/gpuimage/M;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lcom/netease/filterenginelibrary/gpuimage/M;-><init>(Ljava/lang/String;FI)V

    goto :goto_0
.end method

.method private a(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x1

    iput-object p1, p0, Lcom/netease/filterenginelibrary/gpuimage/GPUImageView;->f:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/netease/filterenginelibrary/gpuimage/GPUImageView;->setClickable(Z)V

    invoke-virtual {p0, v0}, Lcom/netease/filterenginelibrary/gpuimage/GPUImageView;->setLongClickable(Z)V

    return-void
.end method

.method static synthetic k()[I
    .locals 3

    sget-object v0, Lcom/netease/filterenginelibrary/gpuimage/GPUImageView;->l:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/netease/filterenginelibrary/gpuimage/FilterMenu;->values()[Lcom/netease/filterenginelibrary/gpuimage/FilterMenu;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/netease/filterenginelibrary/gpuimage/FilterMenu;->HUI:Lcom/netease/filterenginelibrary/gpuimage/FilterMenu;

    invoke-virtual {v1}, Lcom/netease/filterenginelibrary/gpuimage/FilterMenu;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_15

    :goto_1
    :try_start_1
    sget-object v1, Lcom/netease/filterenginelibrary/gpuimage/FilterMenu;->JIAN:Lcom/netease/filterenginelibrary/gpuimage/FilterMenu;

    invoke-virtual {v1}, Lcom/netease/filterenginelibrary/gpuimage/FilterMenu;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_14

    :goto_2
    :try_start_2
    sget-object v1, Lcom/netease/filterenginelibrary/gpuimage/FilterMenu;->LENG:Lcom/netease/filterenginelibrary/gpuimage/FilterMenu;

    invoke-virtual {v1}, Lcom/netease/filterenginelibrary/gpuimage/FilterMenu;->ordinal()I

    move-result v1

    const/16 v2, 0x14

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_13

    :goto_3
    :try_start_3
    sget-object v1, Lcom/netease/filterenginelibrary/gpuimage/FilterMenu;->MO1:Lcom/netease/filterenginelibrary/gpuimage/FilterMenu;

    invoke-virtual {v1}, Lcom/netease/filterenginelibrary/gpuimage/FilterMenu;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_12

    :goto_4
    :try_start_4
    sget-object v1, Lcom/netease/filterenginelibrary/gpuimage/FilterMenu;->MO2:Lcom/netease/filterenginelibrary/gpuimage/FilterMenu;

    invoke-virtual {v1}, Lcom/netease/filterenginelibrary/gpuimage/FilterMenu;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_11

    :goto_5
    :try_start_5
    sget-object v1, Lcom/netease/filterenginelibrary/gpuimage/FilterMenu;->MO3:Lcom/netease/filterenginelibrary/gpuimage/FilterMenu;

    invoke-virtual {v1}, Lcom/netease/filterenginelibrary/gpuimage/FilterMenu;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_10

    :goto_6
    :try_start_6
    sget-object v1, Lcom/netease/filterenginelibrary/gpuimage/FilterMenu;->MU:Lcom/netease/filterenginelibrary/gpuimage/FilterMenu;

    invoke-virtual {v1}, Lcom/netease/filterenginelibrary/gpuimage/FilterMenu;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_f

    :goto_7
    :try_start_7
    sget-object v1, Lcom/netease/filterenginelibrary/gpuimage/FilterMenu;->NORMAL:Lcom/netease/filterenginelibrary/gpuimage/FilterMenu;

    invoke-virtual {v1}, Lcom/netease/filterenginelibrary/gpuimage/FilterMenu;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_e

    :goto_8
    :try_start_8
    sget-object v1, Lcom/netease/filterenginelibrary/gpuimage/FilterMenu;->NUAN:Lcom/netease/filterenginelibrary/gpuimage/FilterMenu;

    invoke-virtual {v1}, Lcom/netease/filterenginelibrary/gpuimage/FilterMenu;->ordinal()I

    move-result v1

    const/16 v2, 0x13

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_d

    :goto_9
    :try_start_9
    sget-object v1, Lcom/netease/filterenginelibrary/gpuimage/FilterMenu;->QING:Lcom/netease/filterenginelibrary/gpuimage/FilterMenu;

    invoke-virtual {v1}, Lcom/netease/filterenginelibrary/gpuimage/FilterMenu;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_c

    :goto_a
    :try_start_a
    sget-object v1, Lcom/netease/filterenginelibrary/gpuimage/FilterMenu;->QIU1:Lcom/netease/filterenginelibrary/gpuimage/FilterMenu;

    invoke-virtual {v1}, Lcom/netease/filterenginelibrary/gpuimage/FilterMenu;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_b

    :goto_b
    :try_start_b
    sget-object v1, Lcom/netease/filterenginelibrary/gpuimage/FilterMenu;->QIU2:Lcom/netease/filterenginelibrary/gpuimage/FilterMenu;

    invoke-virtual {v1}, Lcom/netease/filterenginelibrary/gpuimage/FilterMenu;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_a

    :goto_c
    :try_start_c
    sget-object v1, Lcom/netease/filterenginelibrary/gpuimage/FilterMenu;->SHI:Lcom/netease/filterenginelibrary/gpuimage/FilterMenu;

    invoke-virtual {v1}, Lcom/netease/filterenginelibrary/gpuimage/FilterMenu;->ordinal()I

    move-result v1

    const/16 v2, 0x16

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_9

    :goto_d
    :try_start_d
    sget-object v1, Lcom/netease/filterenginelibrary/gpuimage/FilterMenu;->SHI1:Lcom/netease/filterenginelibrary/gpuimage/FilterMenu;

    invoke-virtual {v1}, Lcom/netease/filterenginelibrary/gpuimage/FilterMenu;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_8

    :goto_e
    :try_start_e
    sget-object v1, Lcom/netease/filterenginelibrary/gpuimage/FilterMenu;->SHI2:Lcom/netease/filterenginelibrary/gpuimage/FilterMenu;

    invoke-virtual {v1}, Lcom/netease/filterenginelibrary/gpuimage/FilterMenu;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_7

    :goto_f
    :try_start_f
    sget-object v1, Lcom/netease/filterenginelibrary/gpuimage/FilterMenu;->SHI3:Lcom/netease/filterenginelibrary/gpuimage/FilterMenu;

    invoke-virtual {v1}, Lcom/netease/filterenginelibrary/gpuimage/FilterMenu;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_6

    :goto_10
    :try_start_10
    sget-object v1, Lcom/netease/filterenginelibrary/gpuimage/FilterMenu;->TOU:Lcom/netease/filterenginelibrary/gpuimage/FilterMenu;

    invoke-virtual {v1}, Lcom/netease/filterenginelibrary/gpuimage/FilterMenu;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_5

    :goto_11
    :try_start_11
    sget-object v1, Lcom/netease/filterenginelibrary/gpuimage/FilterMenu;->XIA:Lcom/netease/filterenginelibrary/gpuimage/FilterMenu;

    invoke-virtual {v1}, Lcom/netease/filterenginelibrary/gpuimage/FilterMenu;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_4

    :goto_12
    :try_start_12
    sget-object v1, Lcom/netease/filterenginelibrary/gpuimage/FilterMenu;->YAN1:Lcom/netease/filterenginelibrary/gpuimage/FilterMenu;

    invoke-virtual {v1}, Lcom/netease/filterenginelibrary/gpuimage/FilterMenu;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_3

    :goto_13
    :try_start_13
    sget-object v1, Lcom/netease/filterenginelibrary/gpuimage/FilterMenu;->YAN2:Lcom/netease/filterenginelibrary/gpuimage/FilterMenu;

    invoke-virtual {v1}, Lcom/netease/filterenginelibrary/gpuimage/FilterMenu;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_2

    :goto_14
    :try_start_14
    sget-object v1, Lcom/netease/filterenginelibrary/gpuimage/FilterMenu;->YAN3:Lcom/netease/filterenginelibrary/gpuimage/FilterMenu;

    invoke-virtual {v1}, Lcom/netease/filterenginelibrary/gpuimage/FilterMenu;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_1

    :goto_15
    :try_start_15
    sget-object v1, Lcom/netease/filterenginelibrary/gpuimage/FilterMenu;->YING:Lcom/netease/filterenginelibrary/gpuimage/FilterMenu;

    invoke-virtual {v1}, Lcom/netease/filterenginelibrary/gpuimage/FilterMenu;->ordinal()I

    move-result v1

    const/16 v2, 0x15

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_0

    :goto_16
    sput-object v0, Lcom/netease/filterenginelibrary/gpuimage/GPUImageView;->l:[I

    goto/16 :goto_0

    :catch_0
    move-exception v1

    goto :goto_16

    :catch_1
    move-exception v1

    goto :goto_15

    :catch_2
    move-exception v1

    goto :goto_14

    :catch_3
    move-exception v1

    goto :goto_13

    :catch_4
    move-exception v1

    goto :goto_12

    :catch_5
    move-exception v1

    goto :goto_11

    :catch_6
    move-exception v1

    goto :goto_10

    :catch_7
    move-exception v1

    goto :goto_f

    :catch_8
    move-exception v1

    goto :goto_e

    :catch_9
    move-exception v1

    goto :goto_d

    :catch_a
    move-exception v1

    goto :goto_c

    :catch_b
    move-exception v1

    goto/16 :goto_b

    :catch_c
    move-exception v1

    goto/16 :goto_a

    :catch_d
    move-exception v1

    goto/16 :goto_9

    :catch_e
    move-exception v1

    goto/16 :goto_8

    :catch_f
    move-exception v1

    goto/16 :goto_7

    :catch_10
    move-exception v1

    goto/16 :goto_6

    :catch_11
    move-exception v1

    goto/16 :goto_5

    :catch_12
    move-exception v1

    goto/16 :goto_4

    :catch_13
    move-exception v1

    goto/16 :goto_3

    :catch_14
    move-exception v1

    goto/16 :goto_2

    :catch_15
    move-exception v1

    goto/16 :goto_1
.end method

.method static synthetic l()[I
    .locals 3

    sget-object v0, Lcom/netease/filterenginelibrary/gpuimage/GPUImageView;->m:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/netease/filterenginelibrary/gpuimage/FilterType;->values()[Lcom/netease/filterenginelibrary/gpuimage/FilterType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/netease/filterenginelibrary/gpuimage/FilterType;->CLARITY:Lcom/netease/filterenginelibrary/gpuimage/FilterType;

    invoke-virtual {v1}, Lcom/netease/filterenginelibrary/gpuimage/FilterType;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_11

    :goto_1
    :try_start_1
    sget-object v1, Lcom/netease/filterenginelibrary/gpuimage/FilterType;->CONTRASTM:Lcom/netease/filterenginelibrary/gpuimage/FilterType;

    invoke-virtual {v1}, Lcom/netease/filterenginelibrary/gpuimage/FilterType;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_10

    :goto_2
    :try_start_2
    sget-object v1, Lcom/netease/filterenginelibrary/gpuimage/FilterType;->CONTRASTP:Lcom/netease/filterenginelibrary/gpuimage/FilterType;

    invoke-virtual {v1}, Lcom/netease/filterenginelibrary/gpuimage/FilterType;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_f

    :goto_3
    :try_start_3
    sget-object v1, Lcom/netease/filterenginelibrary/gpuimage/FilterType;->DARKNESS:Lcom/netease/filterenginelibrary/gpuimage/FilterType;

    invoke-virtual {v1}, Lcom/netease/filterenginelibrary/gpuimage/FilterType;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_e

    :goto_4
    :try_start_4
    sget-object v1, Lcom/netease/filterenginelibrary/gpuimage/FilterType;->DARKNESSTINT:Lcom/netease/filterenginelibrary/gpuimage/FilterType;

    invoke-virtual {v1}, Lcom/netease/filterenginelibrary/gpuimage/FilterType;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_d

    :goto_5
    :try_start_5
    sget-object v1, Lcom/netease/filterenginelibrary/gpuimage/FilterType;->EXPOSUREM:Lcom/netease/filterenginelibrary/gpuimage/FilterType;

    invoke-virtual {v1}, Lcom/netease/filterenginelibrary/gpuimage/FilterType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_c

    :goto_6
    :try_start_6
    sget-object v1, Lcom/netease/filterenginelibrary/gpuimage/FilterType;->EXPOSUREP:Lcom/netease/filterenginelibrary/gpuimage/FilterType;

    invoke-virtual {v1}, Lcom/netease/filterenginelibrary/gpuimage/FilterType;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_b

    :goto_7
    :try_start_7
    sget-object v1, Lcom/netease/filterenginelibrary/gpuimage/FilterType;->FADE:Lcom/netease/filterenginelibrary/gpuimage/FilterType;

    invoke-virtual {v1}, Lcom/netease/filterenginelibrary/gpuimage/FilterType;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_a

    :goto_8
    :try_start_8
    sget-object v1, Lcom/netease/filterenginelibrary/gpuimage/FilterType;->GRAIN:Lcom/netease/filterenginelibrary/gpuimage/FilterType;

    invoke-virtual {v1}, Lcom/netease/filterenginelibrary/gpuimage/FilterType;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_9

    :goto_9
    :try_start_9
    sget-object v1, Lcom/netease/filterenginelibrary/gpuimage/FilterType;->HIGHLIGHT:Lcom/netease/filterenginelibrary/gpuimage/FilterType;

    invoke-virtual {v1}, Lcom/netease/filterenginelibrary/gpuimage/FilterType;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_8

    :goto_a
    :try_start_a
    sget-object v1, Lcom/netease/filterenginelibrary/gpuimage/FilterType;->HIGHLIGHTTINT:Lcom/netease/filterenginelibrary/gpuimage/FilterType;

    invoke-virtual {v1}, Lcom/netease/filterenginelibrary/gpuimage/FilterType;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_7

    :goto_b
    :try_start_b
    sget-object v1, Lcom/netease/filterenginelibrary/gpuimage/FilterType;->NORMAL:Lcom/netease/filterenginelibrary/gpuimage/FilterType;

    invoke-virtual {v1}, Lcom/netease/filterenginelibrary/gpuimage/FilterType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_6

    :goto_c
    :try_start_c
    sget-object v1, Lcom/netease/filterenginelibrary/gpuimage/FilterType;->PRESET:Lcom/netease/filterenginelibrary/gpuimage/FilterType;

    invoke-virtual {v1}, Lcom/netease/filterenginelibrary/gpuimage/FilterType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_5

    :goto_d
    :try_start_d
    sget-object v1, Lcom/netease/filterenginelibrary/gpuimage/FilterType;->SATURATION:Lcom/netease/filterenginelibrary/gpuimage/FilterType;

    invoke-virtual {v1}, Lcom/netease/filterenginelibrary/gpuimage/FilterType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_4

    :goto_e
    :try_start_e
    sget-object v1, Lcom/netease/filterenginelibrary/gpuimage/FilterType;->SHARPNESS:Lcom/netease/filterenginelibrary/gpuimage/FilterType;

    invoke-virtual {v1}, Lcom/netease/filterenginelibrary/gpuimage/FilterType;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_3

    :goto_f
    :try_start_f
    sget-object v1, Lcom/netease/filterenginelibrary/gpuimage/FilterType;->TEMPERATUREM:Lcom/netease/filterenginelibrary/gpuimage/FilterType;

    invoke-virtual {v1}, Lcom/netease/filterenginelibrary/gpuimage/FilterType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_2

    :goto_10
    :try_start_10
    sget-object v1, Lcom/netease/filterenginelibrary/gpuimage/FilterType;->TEMPERATUREP:Lcom/netease/filterenginelibrary/gpuimage/FilterType;

    invoke-virtual {v1}, Lcom/netease/filterenginelibrary/gpuimage/FilterType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_1

    :goto_11
    :try_start_11
    sget-object v1, Lcom/netease/filterenginelibrary/gpuimage/FilterType;->VIGNETTE:Lcom/netease/filterenginelibrary/gpuimage/FilterType;

    invoke-virtual {v1}, Lcom/netease/filterenginelibrary/gpuimage/FilterType;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_0

    :goto_12
    sput-object v0, Lcom/netease/filterenginelibrary/gpuimage/GPUImageView;->m:[I

    goto/16 :goto_0

    :catch_0
    move-exception v1

    goto :goto_12

    :catch_1
    move-exception v1

    goto :goto_11

    :catch_2
    move-exception v1

    goto :goto_10

    :catch_3
    move-exception v1

    goto :goto_f

    :catch_4
    move-exception v1

    goto :goto_e

    :catch_5
    move-exception v1

    goto :goto_d

    :catch_6
    move-exception v1

    goto :goto_c

    :catch_7
    move-exception v1

    goto :goto_b

    :catch_8
    move-exception v1

    goto :goto_a

    :catch_9
    move-exception v1

    goto :goto_9

    :catch_a
    move-exception v1

    goto :goto_8

    :catch_b
    move-exception v1

    goto/16 :goto_7

    :catch_c
    move-exception v1

    goto/16 :goto_6

    :catch_d
    move-exception v1

    goto/16 :goto_5

    :catch_e
    move-exception v1

    goto/16 :goto_4

    :catch_f
    move-exception v1

    goto/16 :goto_3

    :catch_10
    move-exception v1

    goto/16 :goto_2

    :catch_11
    move-exception v1

    goto/16 :goto_1
.end method


# virtual methods
.method protected a(FI)Landroid/graphics/Bitmap;
    .locals 2

    new-instance v0, Lcom/netease/filterenginelibrary/gpuimage/J;

    invoke-direct {v0, p1}, Lcom/netease/filterenginelibrary/gpuimage/J;-><init>(F)V

    iget-object v1, p0, Lcom/netease/filterenginelibrary/gpuimage/GPUImageView;->a:Lcom/netease/filterenginelibrary/gpuimage/r;

    invoke-virtual {v1, v0, p2}, Lcom/netease/filterenginelibrary/gpuimage/r;->a(Lcom/netease/filterenginelibrary/gpuimage/y;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected a(I)Landroid/graphics/Bitmap;
    .locals 3

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/GPUImageView;->b:Lcom/netease/filterenginelibrary/gpuimage/y;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/GPUImageView;->a:Lcom/netease/filterenginelibrary/gpuimage/r;

    iget-object v1, p0, Lcom/netease/filterenginelibrary/gpuimage/GPUImageView;->h:Lcom/netease/filterenginelibrary/gpuimage/FilterMenu;

    iget v2, p0, Lcom/netease/filterenginelibrary/gpuimage/GPUImageView;->j:F

    invoke-virtual {p0, v1, v2}, Lcom/netease/filterenginelibrary/gpuimage/GPUImageView;->a(Lcom/netease/filterenginelibrary/gpuimage/FilterMenu;F)Lcom/netease/filterenginelibrary/gpuimage/y;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/netease/filterenginelibrary/gpuimage/r;->a(Lcom/netease/filterenginelibrary/gpuimage/y;I)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected a(Lcom/netease/filterenginelibrary/gpuimage/FilterType;I)Landroid/graphics/Bitmap;
    .locals 2

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/GPUImageView;->a:Lcom/netease/filterenginelibrary/gpuimage/r;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p1, v1}, Lcom/netease/filterenginelibrary/gpuimage/GPUImageView;->a(Lcom/netease/filterenginelibrary/gpuimage/FilterType;F)Lcom/netease/filterenginelibrary/gpuimage/y;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/netease/filterenginelibrary/gpuimage/r;->a(Lcom/netease/filterenginelibrary/gpuimage/y;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected a(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 2

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/GPUImageView;->a:Lcom/netease/filterenginelibrary/gpuimage/r;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p1, v1}, Lcom/netease/filterenginelibrary/gpuimage/GPUImageView;->a(Ljava/lang/String;F)Lcom/netease/filterenginelibrary/gpuimage/y;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/netease/filterenginelibrary/gpuimage/r;->a(Lcom/netease/filterenginelibrary/gpuimage/y;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lcom/netease/filterenginelibrary/gpuimage/FilterMenu;F)Lcom/netease/filterenginelibrary/gpuimage/y;
    .locals 3

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/netease/filterenginelibrary/gpuimage/GPUImageView;->k:Z

    if-nez v0, :cond_0

    const-string v0, "filter_engine_library"

    const-string v1, "key is illegal"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/netease/filterenginelibrary/gpuimage/y;

    invoke-direct {v0}, Lcom/netease/filterenginelibrary/gpuimage/y;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/netease/filterenginelibrary/gpuimage/GPUImageView;->k()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/netease/filterenginelibrary/gpuimage/FilterMenu;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No filter of that type!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    new-instance v0, Lcom/netease/filterenginelibrary/gpuimage/y;

    invoke-direct {v0}, Lcom/netease/filterenginelibrary/gpuimage/y;-><init>()V

    goto :goto_0

    :pswitch_1
    new-instance v0, Lcom/netease/filterenginelibrary/gpuimage/M;

    const-string v1, "yan1.lfc"

    invoke-virtual {p0, v1}, Lcom/netease/filterenginelibrary/gpuimage/GPUImageView;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p2, v2}, Lcom/netease/filterenginelibrary/gpuimage/M;-><init>(Ljava/lang/String;FI)V

    goto :goto_0

    :pswitch_2
    new-instance v0, Lcom/netease/filterenginelibrary/gpuimage/M;

    const-string v1, "yan2.lfc"

    invoke-virtual {p0, v1}, Lcom/netease/filterenginelibrary/gpuimage/GPUImageView;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p2, v2}, Lcom/netease/filterenginelibrary/gpuimage/M;-><init>(Ljava/lang/String;FI)V

    goto :goto_0

    :pswitch_3
    new-instance v0, Lcom/netease/filterenginelibrary/gpuimage/M;

    const-string v1, "yan3.lfc"

    invoke-virtual {p0, v1}, Lcom/netease/filterenginelibrary/gpuimage/GPUImageView;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p2, v2}, Lcom/netease/filterenginelibrary/gpuimage/M;-><init>(Ljava/lang/String;FI)V

    goto :goto_0

    :pswitch_4
    new-instance v0, Lcom/netease/filterenginelibrary/gpuimage/M;

    const-string v1, "jian.lfc"

    invoke-virtual {p0, v1}, Lcom/netease/filterenginelibrary/gpuimage/GPUImageView;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p2, v2}, Lcom/netease/filterenginelibrary/gpuimage/M;-><init>(Ljava/lang/String;FI)V

    goto :goto_0

    :pswitch_5
    new-instance v0, Lcom/netease/filterenginelibrary/gpuimage/M;

    const-string v1, "xia.lfc"

    invoke-virtual {p0, v1}, Lcom/netease/filterenginelibrary/gpuimage/GPUImageView;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p2, v2}, Lcom/netease/filterenginelibrary/gpuimage/M;-><init>(Ljava/lang/String;FI)V

    goto :goto_0

    :pswitch_6
    new-instance v0, Lcom/netease/filterenginelibrary/gpuimage/M;

    const-string v1, "hui.lfc"

    invoke-virtual {p0, v1}, Lcom/netease/filterenginelibrary/gpuimage/GPUImageView;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p2, v2}, Lcom/netease/filterenginelibrary/gpuimage/M;-><init>(Ljava/lang/String;FI)V

    goto :goto_0

    :pswitch_7
    new-instance v0, Lcom/netease/filterenginelibrary/gpuimage/M;

    const-string v1, "mu.lfc"

    invoke-virtual {p0, v1}, Lcom/netease/filterenginelibrary/gpuimage/GPUImageView;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p2, v2}, Lcom/netease/filterenginelibrary/gpuimage/M;-><init>(Ljava/lang/String;FI)V

    goto :goto_0

    :pswitch_8
    new-instance v0, Lcom/netease/filterenginelibrary/gpuimage/M;

    const-string v1, "qing.lfc"

    invoke-virtual {p0, v1}, Lcom/netease/filterenginelibrary/gpuimage/GPUImageView;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p2, v2}, Lcom/netease/filterenginelibrary/gpuimage/M;-><init>(Ljava/lang/String;FI)V

    goto :goto_0

    :pswitch_9
    new-instance v0, Lcom/netease/filterenginelibrary/gpuimage/M;

    const-string v1, "shi1.lfc"

    invoke-virtual {p0, v1}, Lcom/netease/filterenginelibrary/gpuimage/GPUImageView;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p2, v2}, Lcom/netease/filterenginelibrary/gpuimage/M;-><init>(Ljava/lang/String;FI)V

    goto/16 :goto_0

    :pswitch_a
    new-instance v0, Lcom/netease/filterenginelibrary/gpuimage/M;

    const-string v1, "shi2.lfc"

    invoke-virtual {p0, v1}, Lcom/netease/filterenginelibrary/gpuimage/GPUImageView;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p2, v2}, Lcom/netease/filterenginelibrary/gpuimage/M;-><init>(Ljava/lang/String;FI)V

    goto/16 :goto_0

    :pswitch_b
    new-instance v0, Lcom/netease/filterenginelibrary/gpuimage/M;

    const-string v1, "shi3.lfc"

    invoke-virtual {p0, v1}, Lcom/netease/filterenginelibrary/gpuimage/GPUImageView;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p2, v2}, Lcom/netease/filterenginelibrary/gpuimage/M;-><init>(Ljava/lang/String;FI)V

    goto/16 :goto_0

    :pswitch_c
    new-instance v0, Lcom/netease/filterenginelibrary/gpuimage/M;

    const-string v1, "mo1.lfc"

    invoke-virtual {p0, v1}, Lcom/netease/filterenginelibrary/gpuimage/GPUImageView;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p2, v2}, Lcom/netease/filterenginelibrary/gpuimage/M;-><init>(Ljava/lang/String;FI)V

    goto/16 :goto_0

    :pswitch_d
    new-instance v0, Lcom/netease/filterenginelibrary/gpuimage/M;

    const-string v1, "mo2.lfc"

    invoke-virtual {p0, v1}, Lcom/netease/filterenginelibrary/gpuimage/GPUImageView;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p2, v2}, Lcom/netease/filterenginelibrary/gpuimage/M;-><init>(Ljava/lang/String;FI)V

    goto/16 :goto_0

    :pswitch_e
    new-instance v0, Lcom/netease/filterenginelibrary/gpuimage/M;

    const-string v1, "mo3.lfc"

    invoke-virtual {p0, v1}, Lcom/netease/filterenginelibrary/gpuimage/GPUImageView;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p2, v2}, Lcom/netease/filterenginelibrary/gpuimage/M;-><init>(Ljava/lang/String;FI)V

    goto/16 :goto_0

    :pswitch_f
    new-instance v0, Lcom/netease/filterenginelibrary/gpuimage/M;

    const-string v1, "qiu1.lfc"

    invoke-virtual {p0, v1}, Lcom/netease/filterenginelibrary/gpuimage/GPUImageView;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p2, v2}, Lcom/netease/filterenginelibrary/gpuimage/M;-><init>(Ljava/lang/String;FI)V

    goto/16 :goto_0

    :pswitch_10
    new-instance v0, Lcom/netease/filterenginelibrary/gpuimage/M;

    const-string v1, "qiu2.lfc"

    invoke-virtual {p0, v1}, Lcom/netease/filterenginelibrary/gpuimage/GPUImageView;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p2, v2}, Lcom/netease/filterenginelibrary/gpuimage/M;-><init>(Ljava/lang/String;FI)V

    goto/16 :goto_0

    :pswitch_11
    new-instance v0, Lcom/netease/filterenginelibrary/gpuimage/M;

    const-string v1, "tou.lfc"

    invoke-virtual {p0, v1}, Lcom/netease/filterenginelibrary/gpuimage/GPUImageView;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p2, v2}, Lcom/netease/filterenginelibrary/gpuimage/M;-><init>(Ljava/lang/String;FI)V

    goto/16 :goto_0

    :pswitch_12
    new-instance v0, Lcom/netease/filterenginelibrary/gpuimage/M;

    const-string v1, "nuan.lfc"

    invoke-virtual {p0, v1}, Lcom/netease/filterenginelibrary/gpuimage/GPUImageView;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p2, v2}, Lcom/netease/filterenginelibrary/gpuimage/M;-><init>(Ljava/lang/String;FI)V

    goto/16 :goto_0

    :pswitch_13
    new-instance v0, Lcom/netease/filterenginelibrary/gpuimage/M;

    const-string v1, "leng.lfc"

    invoke-virtual {p0, v1}, Lcom/netease/filterenginelibrary/gpuimage/GPUImageView;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p2, v2}, Lcom/netease/filterenginelibrary/gpuimage/M;-><init>(Ljava/lang/String;FI)V

    goto/16 :goto_0

    :pswitch_14
    new-instance v0, Lcom/netease/filterenginelibrary/gpuimage/M;

    const-string v1, "ying.lfc"

    invoke-virtual {p0, v1}, Lcom/netease/filterenginelibrary/gpuimage/GPUImageView;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p2, v2}, Lcom/netease/filterenginelibrary/gpuimage/M;-><init>(Ljava/lang/String;FI)V

    goto/16 :goto_0

    :pswitch_15
    new-instance v0, Lcom/netease/filterenginelibrary/gpuimage/M;

    const-string v1, "shi.lfc"

    invoke-virtual {p0, v1}, Lcom/netease/filterenginelibrary/gpuimage/GPUImageView;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p2, v2}, Lcom/netease/filterenginelibrary/gpuimage/M;-><init>(Ljava/lang/String;FI)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
    .end packed-switch
.end method

.method protected a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/GPUImageView;->f:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v1

    new-array v1, v1, [B

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    new-instance v0, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected a(F)V
    .locals 1

    iput p1, p0, Lcom/netease/filterenginelibrary/gpuimage/GPUImageView;->c:F

    invoke-virtual {p0}, Lcom/netease/filterenginelibrary/gpuimage/GPUImageView;->requestLayout()V

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/GPUImageView;->a:Lcom/netease/filterenginelibrary/gpuimage/r;

    invoke-virtual {v0}, Lcom/netease/filterenginelibrary/gpuimage/r;->f()V

    return-void
.end method

.method protected a(FFFF)V
    .locals 1

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/GPUImageView;->a:Lcom/netease/filterenginelibrary/gpuimage/r;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/netease/filterenginelibrary/gpuimage/r;->a(FFFF)V

    return-void
.end method

.method protected a(Landroid/graphics/Bitmap;)V
    .locals 7

    const/high16 v6, 0x44800000    # 1024.0f

    iput-object p1, p0, Lcom/netease/filterenginelibrary/gpuimage/GPUImageView;->g:Landroid/graphics/Bitmap;

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v1, 0x64

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    iget v1, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v4, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    const/high16 v0, 0x3f800000    # 1.0f

    int-to-float v5, v1

    cmpl-float v5, v5, v6

    if-gtz v5, :cond_0

    int-to-float v5, v1

    cmpl-float v5, v5, v6

    if-lez v5, :cond_1

    :cond_0
    int-to-float v0, v1

    div-float/2addr v0, v6

    int-to-float v1, v4

    div-float/2addr v1, v6

    cmpl-float v4, v0, v1

    if-lez v4, :cond_2

    :goto_0
    const/4 v1, 0x2

    :goto_1
    int-to-float v4, v1

    cmpg-float v4, v0, v4

    if-ltz v4, :cond_3

    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    float-to-int v0, v0

    iput v0, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/4 v1, 0x0

    invoke-static {v0, v1, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/filterenginelibrary/gpuimage/GPUImageView;->a:Lcom/netease/filterenginelibrary/gpuimage/r;

    invoke-virtual {v1, v0}, Lcom/netease/filterenginelibrary/gpuimage/r;->a(Landroid/graphics/Bitmap;)V

    return-void

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    const/high16 v0, 0x40000000    # 2.0f

    goto :goto_1
.end method

.method protected a(Landroid/net/Uri;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/filterenginelibrary/gpuimage/GPUImageView;->e:Landroid/net/Uri;

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/GPUImageView;->a:Lcom/netease/filterenginelibrary/gpuimage/r;

    iget-object v1, p0, Lcom/netease/filterenginelibrary/gpuimage/GPUImageView;->e:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/netease/filterenginelibrary/gpuimage/r;->a(Landroid/net/Uri;)V

    return-void
.end method

.method protected a(Landroid/net/Uri;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/netease/filterenginelibrary/gpuimage/GPUImageView;->a(Landroid/net/Uri;)V

    return-void
.end method

.method protected a(Lcom/netease/filterenginelibrary/gpuimage/u;)V
    .locals 1

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/GPUImageView;->a:Lcom/netease/filterenginelibrary/gpuimage/r;

    invoke-virtual {v0, p1}, Lcom/netease/filterenginelibrary/gpuimage/r;->a(Lcom/netease/filterenginelibrary/gpuimage/u;)V

    return-void
.end method

.method protected a(Lcom/netease/filterenginelibrary/utils/OnBufferGenerateListener;)V
    .locals 1

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/GPUImageView;->a:Lcom/netease/filterenginelibrary/gpuimage/r;

    invoke-virtual {v0, p1}, Lcom/netease/filterenginelibrary/gpuimage/r;->a(Lcom/netease/filterenginelibrary/utils/OnBufferGenerateListener;)V

    return-void
.end method

.method protected a(Ljava/lang/String;II)V
    .locals 7

    const/4 v6, 0x6

    const/4 v5, 0x0

    const/high16 v4, 0x42c80000    # 100.0f

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/GPUImageView;->a:Lcom/netease/filterenginelibrary/gpuimage/r;

    invoke-virtual {v0}, Lcom/netease/filterenginelibrary/gpuimage/r;->a()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/netease/filterenginelibrary/gpuimage/I;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/netease/filterenginelibrary/gpuimage/I;-><init>(Ljava/util/List;)V

    const-string v1, "TEMPERATURE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    int-to-float v1, p2

    div-float/2addr v1, v4

    if-lez p2, :cond_e

    sget-object v2, Lcom/netease/filterenginelibrary/gpuimage/FilterType;->TEMPERATUREP:Lcom/netease/filterenginelibrary/gpuimage/FilterType;

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {v2, v1}, Lcom/netease/filterenginelibrary/gpuimage/GPUImageView;->a(Lcom/netease/filterenginelibrary/gpuimage/FilterType;F)Lcom/netease/filterenginelibrary/gpuimage/y;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/filterenginelibrary/gpuimage/I;->a(Lcom/netease/filterenginelibrary/gpuimage/y;)V

    :cond_1
    :goto_1
    const-string v1, "SATURATION"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    int-to-float v1, p2

    div-float/2addr v1, v4

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v1, v2

    sget-object v2, Lcom/netease/filterenginelibrary/gpuimage/FilterType;->SATURATION:Lcom/netease/filterenginelibrary/gpuimage/FilterType;

    invoke-static {v2, v1}, Lcom/netease/filterenginelibrary/gpuimage/GPUImageView;->a(Lcom/netease/filterenginelibrary/gpuimage/FilterType;F)Lcom/netease/filterenginelibrary/gpuimage/y;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/filterenginelibrary/gpuimage/I;->a(Lcom/netease/filterenginelibrary/gpuimage/y;)V

    :cond_2
    const-string v1, "EXPOSURE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    int-to-float v1, p2

    div-float/2addr v1, v4

    if-lez p2, :cond_f

    sget-object v2, Lcom/netease/filterenginelibrary/gpuimage/FilterType;->EXPOSUREP:Lcom/netease/filterenginelibrary/gpuimage/FilterType;

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {v2, v1}, Lcom/netease/filterenginelibrary/gpuimage/GPUImageView;->a(Lcom/netease/filterenginelibrary/gpuimage/FilterType;F)Lcom/netease/filterenginelibrary/gpuimage/y;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/filterenginelibrary/gpuimage/I;->a(Lcom/netease/filterenginelibrary/gpuimage/y;)V

    :cond_3
    :goto_2
    const-string v1, "CONTRAST"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    int-to-float v1, p2

    div-float/2addr v1, v4

    if-lez p2, :cond_10

    sget-object v2, Lcom/netease/filterenginelibrary/gpuimage/FilterType;->CONTRASTP:Lcom/netease/filterenginelibrary/gpuimage/FilterType;

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {v2, v1}, Lcom/netease/filterenginelibrary/gpuimage/GPUImageView;->a(Lcom/netease/filterenginelibrary/gpuimage/FilterType;F)Lcom/netease/filterenginelibrary/gpuimage/y;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/filterenginelibrary/gpuimage/I;->a(Lcom/netease/filterenginelibrary/gpuimage/y;)V

    :cond_4
    :goto_3
    const-string v1, "CLARITY"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    int-to-float v1, p2

    div-float/2addr v1, v4

    cmpl-float v2, v1, v5

    if-lez v2, :cond_5

    sget-object v2, Lcom/netease/filterenginelibrary/gpuimage/FilterType;->CLARITY:Lcom/netease/filterenginelibrary/gpuimage/FilterType;

    invoke-static {v2, v1}, Lcom/netease/filterenginelibrary/gpuimage/GPUImageView;->a(Lcom/netease/filterenginelibrary/gpuimage/FilterType;F)Lcom/netease/filterenginelibrary/gpuimage/y;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/filterenginelibrary/gpuimage/I;->a(Lcom/netease/filterenginelibrary/gpuimage/y;)V

    :cond_5
    const-string v1, "SHARPNESS"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    int-to-float v1, p2

    div-float/2addr v1, v4

    cmpl-float v2, v1, v5

    if-lez v2, :cond_6

    sget-object v2, Lcom/netease/filterenginelibrary/gpuimage/FilterType;->SHARPNESS:Lcom/netease/filterenginelibrary/gpuimage/FilterType;

    invoke-static {v2, v1}, Lcom/netease/filterenginelibrary/gpuimage/GPUImageView;->a(Lcom/netease/filterenginelibrary/gpuimage/FilterType;F)Lcom/netease/filterenginelibrary/gpuimage/y;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/filterenginelibrary/gpuimage/I;->a(Lcom/netease/filterenginelibrary/gpuimage/y;)V

    :cond_6
    const-string v1, "GRAIN"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    int-to-float v1, p2

    div-float/2addr v1, v4

    cmpl-float v2, v1, v5

    if-lez v2, :cond_7

    sget-object v2, Lcom/netease/filterenginelibrary/gpuimage/FilterType;->GRAIN:Lcom/netease/filterenginelibrary/gpuimage/FilterType;

    const/high16 v3, 0x40a00000    # 5.0f

    div-float/2addr v1, v3

    invoke-static {v2, v1}, Lcom/netease/filterenginelibrary/gpuimage/GPUImageView;->a(Lcom/netease/filterenginelibrary/gpuimage/FilterType;F)Lcom/netease/filterenginelibrary/gpuimage/y;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/filterenginelibrary/gpuimage/I;->a(Lcom/netease/filterenginelibrary/gpuimage/y;)V

    :cond_7
    const-string v1, "VIGNETTE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    int-to-float v1, p2

    div-float/2addr v1, v4

    cmpl-float v2, v1, v5

    if-lez v2, :cond_8

    sget-object v2, Lcom/netease/filterenginelibrary/gpuimage/FilterType;->VIGNETTE:Lcom/netease/filterenginelibrary/gpuimage/FilterType;

    invoke-static {v2, v1}, Lcom/netease/filterenginelibrary/gpuimage/GPUImageView;->a(Lcom/netease/filterenginelibrary/gpuimage/FilterType;F)Lcom/netease/filterenginelibrary/gpuimage/y;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/filterenginelibrary/gpuimage/I;->a(Lcom/netease/filterenginelibrary/gpuimage/y;)V

    :cond_8
    const-string v1, "HIGHLIGHT"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    if-ltz p3, :cond_9

    if-ge p3, v6, :cond_9

    const-string v1, "HIGHLIGHTTINT"

    invoke-static {v1}, Lcom/netease/filterenginelibrary/gpuimage/FilterType;->valueOf(Ljava/lang/String;)Lcom/netease/filterenginelibrary/gpuimage/FilterType;

    move-result-object v1

    invoke-virtual {p0, v1, p3}, Lcom/netease/filterenginelibrary/gpuimage/GPUImageView;->b(Lcom/netease/filterenginelibrary/gpuimage/FilterType;I)Lcom/netease/filterenginelibrary/gpuimage/y;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/filterenginelibrary/gpuimage/I;->a(Lcom/netease/filterenginelibrary/gpuimage/y;)V

    :cond_9
    if-eqz p2, :cond_a

    int-to-float v1, p2

    div-float/2addr v1, v4

    cmpl-float v2, v1, v5

    if-lez v2, :cond_a

    sget-object v2, Lcom/netease/filterenginelibrary/gpuimage/FilterType;->HIGHLIGHT:Lcom/netease/filterenginelibrary/gpuimage/FilterType;

    invoke-static {v2, v1}, Lcom/netease/filterenginelibrary/gpuimage/GPUImageView;->a(Lcom/netease/filterenginelibrary/gpuimage/FilterType;F)Lcom/netease/filterenginelibrary/gpuimage/y;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/filterenginelibrary/gpuimage/I;->a(Lcom/netease/filterenginelibrary/gpuimage/y;)V

    :cond_a
    const-string v1, "DARKNESS"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    if-ltz p3, :cond_b

    if-ge p3, v6, :cond_b

    const-string v1, "DARKNESSTINT"

    invoke-static {v1}, Lcom/netease/filterenginelibrary/gpuimage/FilterType;->valueOf(Ljava/lang/String;)Lcom/netease/filterenginelibrary/gpuimage/FilterType;

    move-result-object v1

    invoke-virtual {p0, v1, p3}, Lcom/netease/filterenginelibrary/gpuimage/GPUImageView;->b(Lcom/netease/filterenginelibrary/gpuimage/FilterType;I)Lcom/netease/filterenginelibrary/gpuimage/y;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/filterenginelibrary/gpuimage/I;->a(Lcom/netease/filterenginelibrary/gpuimage/y;)V

    :cond_b
    if-eqz p2, :cond_c

    int-to-float v1, p2

    div-float/2addr v1, v4

    cmpl-float v2, v1, v5

    if-lez v2, :cond_c

    const-string v2, "DARKNESS"

    invoke-static {v2}, Lcom/netease/filterenginelibrary/gpuimage/FilterType;->valueOf(Ljava/lang/String;)Lcom/netease/filterenginelibrary/gpuimage/FilterType;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/netease/filterenginelibrary/gpuimage/GPUImageView;->a(Lcom/netease/filterenginelibrary/gpuimage/FilterType;F)Lcom/netease/filterenginelibrary/gpuimage/y;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/filterenginelibrary/gpuimage/I;->a(Lcom/netease/filterenginelibrary/gpuimage/y;)V

    :cond_c
    const-string v1, "FADE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    int-to-float v1, p2

    div-float/2addr v1, v4

    cmpl-float v2, v1, v5

    if-lez v2, :cond_d

    sget-object v2, Lcom/netease/filterenginelibrary/gpuimage/FilterType;->FADE:Lcom/netease/filterenginelibrary/gpuimage/FilterType;

    invoke-static {v2, v1}, Lcom/netease/filterenginelibrary/gpuimage/GPUImageView;->a(Lcom/netease/filterenginelibrary/gpuimage/FilterType;F)Lcom/netease/filterenginelibrary/gpuimage/y;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/filterenginelibrary/gpuimage/I;->a(Lcom/netease/filterenginelibrary/gpuimage/y;)V

    :cond_d
    iget-object v1, p0, Lcom/netease/filterenginelibrary/gpuimage/GPUImageView;->a:Lcom/netease/filterenginelibrary/gpuimage/r;

    invoke-virtual {v1, v0}, Lcom/netease/filterenginelibrary/gpuimage/r;->a(Lcom/netease/filterenginelibrary/gpuimage/y;)V

    invoke-virtual {p0}, Lcom/netease/filterenginelibrary/gpuimage/GPUImageView;->requestRender()V

    goto/16 :goto_0

    :cond_e
    if-gez p2, :cond_1

    sget-object v2, Lcom/netease/filterenginelibrary/gpuimage/FilterType;->TEMPERATUREM:Lcom/netease/filterenginelibrary/gpuimage/FilterType;

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {v2, v1}, Lcom/netease/filterenginelibrary/gpuimage/GPUImageView;->a(Lcom/netease/filterenginelibrary/gpuimage/FilterType;F)Lcom/netease/filterenginelibrary/gpuimage/y;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/filterenginelibrary/gpuimage/I;->a(Lcom/netease/filterenginelibrary/gpuimage/y;)V

    goto/16 :goto_1

    :cond_f
    if-gez p2, :cond_3

    sget-object v2, Lcom/netease/filterenginelibrary/gpuimage/FilterType;->EXPOSUREM:Lcom/netease/filterenginelibrary/gpuimage/FilterType;

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {v2, v1}, Lcom/netease/filterenginelibrary/gpuimage/GPUImageView;->a(Lcom/netease/filterenginelibrary/gpuimage/FilterType;F)Lcom/netease/filterenginelibrary/gpuimage/y;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/filterenginelibrary/gpuimage/I;->a(Lcom/netease/filterenginelibrary/gpuimage/y;)V

    goto/16 :goto_2

    :cond_10
    if-gez p2, :cond_4

    sget-object v2, Lcom/netease/filterenginelibrary/gpuimage/FilterType;->CONTRASTM:Lcom/netease/filterenginelibrary/gpuimage/FilterType;

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {v2, v1}, Lcom/netease/filterenginelibrary/gpuimage/GPUImageView;->a(Lcom/netease/filterenginelibrary/gpuimage/FilterType;F)Lcom/netease/filterenginelibrary/gpuimage/y;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/filterenginelibrary/gpuimage/I;->a(Lcom/netease/filterenginelibrary/gpuimage/y;)V

    goto/16 :goto_3
.end method

.method protected a(Lorg/dom4j/Document;)V
    .locals 8

    const/4 v1, 0x0

    const/4 v7, 0x6

    const/high16 v6, 0x42c80000    # 100.0f

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/GPUImageView;->a:Lcom/netease/filterenginelibrary/gpuimage/r;

    invoke-virtual {v0}, Lcom/netease/filterenginelibrary/gpuimage/r;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/netease/filterenginelibrary/gpuimage/GPUImageView;->k:Z

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "filter_engine_library"

    const-string v1, "key is illegal"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_2

    invoke-interface {p1}, Lorg/dom4j/Document;->hasContent()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    new-instance v0, Lcom/netease/filterenginelibrary/gpuimage/I;

    invoke-direct {v0, v1}, Lcom/netease/filterenginelibrary/gpuimage/I;-><init>(Ljava/util/List;)V

    new-instance v1, Lcom/netease/filterenginelibrary/gpuimage/y;

    invoke-direct {v1}, Lcom/netease/filterenginelibrary/gpuimage/y;-><init>()V

    invoke-virtual {v0, v1}, Lcom/netease/filterenginelibrary/gpuimage/I;->a(Lcom/netease/filterenginelibrary/gpuimage/y;)V

    iget-object v1, p0, Lcom/netease/filterenginelibrary/gpuimage/GPUImageView;->a:Lcom/netease/filterenginelibrary/gpuimage/r;

    invoke-virtual {v1, v0}, Lcom/netease/filterenginelibrary/gpuimage/r;->a(Lcom/netease/filterenginelibrary/gpuimage/y;)V

    invoke-virtual {p0}, Lcom/netease/filterenginelibrary/gpuimage/GPUImageView;->requestRender()V

    goto :goto_0

    :cond_3
    new-instance v0, Lcom/netease/filterenginelibrary/gpuimage/I;

    invoke-direct {v0, v1}, Lcom/netease/filterenginelibrary/gpuimage/I;-><init>(Ljava/util/List;)V

    invoke-interface {p1}, Lorg/dom4j/Document;->getRootElement()Lorg/dom4j/Element;

    move-result-object v1

    const-string v2, "PRESET"

    invoke-interface {v1, v2}, Lorg/dom4j/Element;->element(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v2

    const-string v3, "type"

    invoke-interface {v2, v3}, Lorg/dom4j/Element;->attribute(Ljava/lang/String;)Lorg/dom4j/Attribute;

    move-result-object v3

    invoke-interface {v3}, Lorg/dom4j/Attribute;->getValue()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ratio"

    invoke-interface {v2, v4}, Lorg/dom4j/Element;->attribute(Ljava/lang/String;)Lorg/dom4j/Attribute;

    move-result-object v2

    invoke-interface {v2}, Lorg/dom4j/Attribute;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    div-float/2addr v2, v6

    cmpl-float v4, v2, v5

    if-lez v4, :cond_4

    invoke-static {v3, v2}, Lcom/netease/filterenginelibrary/gpuimage/GPUImageView;->a(Ljava/lang/String;F)Lcom/netease/filterenginelibrary/gpuimage/y;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/netease/filterenginelibrary/gpuimage/I;->a(Lcom/netease/filterenginelibrary/gpuimage/y;)V

    :cond_4
    const-string v2, "TEMPERATURE"

    invoke-interface {v1, v2}, Lorg/dom4j/Element;->element(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v2

    if-eqz v2, :cond_5

    const-string v3, "ratio"

    invoke-interface {v2, v3}, Lorg/dom4j/Element;->attribute(Ljava/lang/String;)Lorg/dom4j/Attribute;

    move-result-object v2

    invoke-interface {v2}, Lorg/dom4j/Attribute;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    div-float/2addr v2, v6

    cmpl-float v3, v2, v5

    if-lez v3, :cond_12

    sget-object v3, Lcom/netease/filterenginelibrary/gpuimage/FilterType;->TEMPERATUREP:Lcom/netease/filterenginelibrary/gpuimage/FilterType;

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-static {v3, v2}, Lcom/netease/filterenginelibrary/gpuimage/GPUImageView;->a(Lcom/netease/filterenginelibrary/gpuimage/FilterType;F)Lcom/netease/filterenginelibrary/gpuimage/y;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/netease/filterenginelibrary/gpuimage/I;->a(Lcom/netease/filterenginelibrary/gpuimage/y;)V

    :cond_5
    :goto_1
    const-string v2, "SATURATION"

    invoke-interface {v1, v2}, Lorg/dom4j/Element;->element(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v2

    if-eqz v2, :cond_6

    const-string v3, "ratio"

    invoke-interface {v2, v3}, Lorg/dom4j/Element;->attribute(Ljava/lang/String;)Lorg/dom4j/Attribute;

    move-result-object v2

    invoke-interface {v2}, Lorg/dom4j/Attribute;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    div-float/2addr v2, v6

    const/high16 v3, 0x3f800000    # 1.0f

    add-float/2addr v2, v3

    sget-object v3, Lcom/netease/filterenginelibrary/gpuimage/FilterType;->SATURATION:Lcom/netease/filterenginelibrary/gpuimage/FilterType;

    invoke-static {v3, v2}, Lcom/netease/filterenginelibrary/gpuimage/GPUImageView;->a(Lcom/netease/filterenginelibrary/gpuimage/FilterType;F)Lcom/netease/filterenginelibrary/gpuimage/y;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/netease/filterenginelibrary/gpuimage/I;->a(Lcom/netease/filterenginelibrary/gpuimage/y;)V

    :cond_6
    const-string v2, "EXPOSURE"

    invoke-interface {v1, v2}, Lorg/dom4j/Element;->element(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v2

    if-eqz v2, :cond_7

    const-string v3, "ratio"

    invoke-interface {v2, v3}, Lorg/dom4j/Element;->attribute(Ljava/lang/String;)Lorg/dom4j/Attribute;

    move-result-object v2

    invoke-interface {v2}, Lorg/dom4j/Attribute;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    div-float/2addr v2, v6

    cmpl-float v3, v2, v5

    if-lez v3, :cond_13

    sget-object v3, Lcom/netease/filterenginelibrary/gpuimage/FilterType;->EXPOSUREP:Lcom/netease/filterenginelibrary/gpuimage/FilterType;

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-static {v3, v2}, Lcom/netease/filterenginelibrary/gpuimage/GPUImageView;->a(Lcom/netease/filterenginelibrary/gpuimage/FilterType;F)Lcom/netease/filterenginelibrary/gpuimage/y;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/netease/filterenginelibrary/gpuimage/I;->a(Lcom/netease/filterenginelibrary/gpuimage/y;)V

    :cond_7
    :goto_2
    const-string v2, "CONTRAST"

    invoke-interface {v1, v2}, Lorg/dom4j/Element;->element(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v2

    if-eqz v2, :cond_8

    const-string v3, "ratio"

    invoke-interface {v2, v3}, Lorg/dom4j/Element;->attribute(Ljava/lang/String;)Lorg/dom4j/Attribute;

    move-result-object v2

    invoke-interface {v2}, Lorg/dom4j/Attribute;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    div-float/2addr v2, v6

    cmpl-float v3, v2, v5

    if-lez v3, :cond_14

    sget-object v3, Lcom/netease/filterenginelibrary/gpuimage/FilterType;->CONTRASTP:Lcom/netease/filterenginelibrary/gpuimage/FilterType;

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-static {v3, v2}, Lcom/netease/filterenginelibrary/gpuimage/GPUImageView;->a(Lcom/netease/filterenginelibrary/gpuimage/FilterType;F)Lcom/netease/filterenginelibrary/gpuimage/y;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/netease/filterenginelibrary/gpuimage/I;->a(Lcom/netease/filterenginelibrary/gpuimage/y;)V

    :cond_8
    :goto_3
    const-string v2, "CLARITY"

    invoke-interface {v1, v2}, Lorg/dom4j/Element;->element(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v2

    if-eqz v2, :cond_9

    const-string v3, "ratio"

    invoke-interface {v2, v3}, Lorg/dom4j/Element;->attribute(Ljava/lang/String;)Lorg/dom4j/Attribute;

    move-result-object v2

    invoke-interface {v2}, Lorg/dom4j/Attribute;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    div-float/2addr v2, v6

    cmpl-float v3, v2, v5

    if-lez v3, :cond_9

    sget-object v3, Lcom/netease/filterenginelibrary/gpuimage/FilterType;->CLARITY:Lcom/netease/filterenginelibrary/gpuimage/FilterType;

    invoke-static {v3, v2}, Lcom/netease/filterenginelibrary/gpuimage/GPUImageView;->a(Lcom/netease/filterenginelibrary/gpuimage/FilterType;F)Lcom/netease/filterenginelibrary/gpuimage/y;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/netease/filterenginelibrary/gpuimage/I;->a(Lcom/netease/filterenginelibrary/gpuimage/y;)V

    :cond_9
    const-string v2, "SHARPNESS"

    invoke-interface {v1, v2}, Lorg/dom4j/Element;->element(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v2

    if-eqz v2, :cond_a

    const-string v3, "ratio"

    invoke-interface {v2, v3}, Lorg/dom4j/Element;->attribute(Ljava/lang/String;)Lorg/dom4j/Attribute;

    move-result-object v2

    invoke-interface {v2}, Lorg/dom4j/Attribute;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    div-float/2addr v2, v6

    cmpl-float v3, v2, v5

    if-lez v3, :cond_a

    sget-object v3, Lcom/netease/filterenginelibrary/gpuimage/FilterType;->SHARPNESS:Lcom/netease/filterenginelibrary/gpuimage/FilterType;

    invoke-static {v3, v2}, Lcom/netease/filterenginelibrary/gpuimage/GPUImageView;->a(Lcom/netease/filterenginelibrary/gpuimage/FilterType;F)Lcom/netease/filterenginelibrary/gpuimage/y;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/netease/filterenginelibrary/gpuimage/I;->a(Lcom/netease/filterenginelibrary/gpuimage/y;)V

    :cond_a
    const-string v2, "GRAIN"

    invoke-interface {v1, v2}, Lorg/dom4j/Element;->element(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v2

    if-eqz v2, :cond_b

    const-string v3, "ratio"

    invoke-interface {v2, v3}, Lorg/dom4j/Element;->attribute(Ljava/lang/String;)Lorg/dom4j/Attribute;

    move-result-object v2

    invoke-interface {v2}, Lorg/dom4j/Attribute;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    div-float/2addr v2, v6

    cmpl-float v3, v2, v5

    if-lez v3, :cond_b

    sget-object v3, Lcom/netease/filterenginelibrary/gpuimage/FilterType;->GRAIN:Lcom/netease/filterenginelibrary/gpuimage/FilterType;

    const/high16 v4, 0x40a00000    # 5.0f

    div-float/2addr v2, v4

    invoke-static {v3, v2}, Lcom/netease/filterenginelibrary/gpuimage/GPUImageView;->a(Lcom/netease/filterenginelibrary/gpuimage/FilterType;F)Lcom/netease/filterenginelibrary/gpuimage/y;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/netease/filterenginelibrary/gpuimage/I;->a(Lcom/netease/filterenginelibrary/gpuimage/y;)V

    :cond_b
    const-string v2, "VIGNETTE"

    invoke-interface {v1, v2}, Lorg/dom4j/Element;->element(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v2

    if-eqz v2, :cond_c

    const-string v3, "ratio"

    invoke-interface {v2, v3}, Lorg/dom4j/Element;->attribute(Ljava/lang/String;)Lorg/dom4j/Attribute;

    move-result-object v2

    invoke-interface {v2}, Lorg/dom4j/Attribute;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    div-float/2addr v2, v6

    cmpl-float v3, v2, v5

    if-lez v3, :cond_c

    sget-object v3, Lcom/netease/filterenginelibrary/gpuimage/FilterType;->VIGNETTE:Lcom/netease/filterenginelibrary/gpuimage/FilterType;

    invoke-static {v3, v2}, Lcom/netease/filterenginelibrary/gpuimage/GPUImageView;->a(Lcom/netease/filterenginelibrary/gpuimage/FilterType;F)Lcom/netease/filterenginelibrary/gpuimage/y;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/netease/filterenginelibrary/gpuimage/I;->a(Lcom/netease/filterenginelibrary/gpuimage/y;)V

    :cond_c
    const-string v2, "HIGHLIGHT"

    invoke-interface {v1, v2}, Lorg/dom4j/Element;->element(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v2

    if-eqz v2, :cond_e

    const-string v3, "colortype"

    invoke-interface {v2, v3}, Lorg/dom4j/Element;->attribute(Ljava/lang/String;)Lorg/dom4j/Attribute;

    move-result-object v3

    if-eqz v3, :cond_d

    const-string v3, "colortype"

    invoke-interface {v2, v3}, Lorg/dom4j/Element;->attribute(Ljava/lang/String;)Lorg/dom4j/Attribute;

    move-result-object v3

    invoke-interface {v3}, Lorg/dom4j/Attribute;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ltz v3, :cond_d

    if-ge v3, v7, :cond_d

    const-string v4, "HIGHLIGHTTINT"

    invoke-static {v4}, Lcom/netease/filterenginelibrary/gpuimage/FilterType;->valueOf(Ljava/lang/String;)Lcom/netease/filterenginelibrary/gpuimage/FilterType;

    move-result-object v4

    invoke-virtual {p0, v4, v3}, Lcom/netease/filterenginelibrary/gpuimage/GPUImageView;->b(Lcom/netease/filterenginelibrary/gpuimage/FilterType;I)Lcom/netease/filterenginelibrary/gpuimage/y;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/netease/filterenginelibrary/gpuimage/I;->a(Lcom/netease/filterenginelibrary/gpuimage/y;)V

    :cond_d
    const-string v3, "ratio"

    invoke-interface {v2, v3}, Lorg/dom4j/Element;->attribute(Ljava/lang/String;)Lorg/dom4j/Attribute;

    move-result-object v3

    if-eqz v3, :cond_e

    const-string v3, "ratio"

    invoke-interface {v2, v3}, Lorg/dom4j/Element;->attribute(Ljava/lang/String;)Lorg/dom4j/Attribute;

    move-result-object v2

    invoke-interface {v2}, Lorg/dom4j/Attribute;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    div-float/2addr v2, v6

    cmpl-float v3, v2, v5

    if-lez v3, :cond_e

    sget-object v3, Lcom/netease/filterenginelibrary/gpuimage/FilterType;->HIGHLIGHT:Lcom/netease/filterenginelibrary/gpuimage/FilterType;

    invoke-static {v3, v2}, Lcom/netease/filterenginelibrary/gpuimage/GPUImageView;->a(Lcom/netease/filterenginelibrary/gpuimage/FilterType;F)Lcom/netease/filterenginelibrary/gpuimage/y;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/netease/filterenginelibrary/gpuimage/I;->a(Lcom/netease/filterenginelibrary/gpuimage/y;)V

    :cond_e
    const-string v2, "DARKNESS"

    invoke-interface {v1, v2}, Lorg/dom4j/Element;->element(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v2

    if-eqz v2, :cond_10

    const-string v3, "colortype"

    invoke-interface {v2, v3}, Lorg/dom4j/Element;->attribute(Ljava/lang/String;)Lorg/dom4j/Attribute;

    move-result-object v3

    if-eqz v3, :cond_f

    const-string v3, "colortype"

    invoke-interface {v2, v3}, Lorg/dom4j/Element;->attribute(Ljava/lang/String;)Lorg/dom4j/Attribute;

    move-result-object v3

    invoke-interface {v3}, Lorg/dom4j/Attribute;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ltz v3, :cond_f

    if-ge v3, v7, :cond_f

    const-string v4, "DARKNESSTINT"

    invoke-static {v4}, Lcom/netease/filterenginelibrary/gpuimage/FilterType;->valueOf(Ljava/lang/String;)Lcom/netease/filterenginelibrary/gpuimage/FilterType;

    move-result-object v4

    invoke-virtual {p0, v4, v3}, Lcom/netease/filterenginelibrary/gpuimage/GPUImageView;->b(Lcom/netease/filterenginelibrary/gpuimage/FilterType;I)Lcom/netease/filterenginelibrary/gpuimage/y;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/netease/filterenginelibrary/gpuimage/I;->a(Lcom/netease/filterenginelibrary/gpuimage/y;)V

    :cond_f
    const-string v3, "ratio"

    invoke-interface {v2, v3}, Lorg/dom4j/Element;->attribute(Ljava/lang/String;)Lorg/dom4j/Attribute;

    move-result-object v3

    if-eqz v3, :cond_10

    const-string v3, "ratio"

    invoke-interface {v2, v3}, Lorg/dom4j/Element;->attribute(Ljava/lang/String;)Lorg/dom4j/Attribute;

    move-result-object v2

    invoke-interface {v2}, Lorg/dom4j/Attribute;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    div-float/2addr v2, v6

    cmpl-float v3, v2, v5

    if-lez v3, :cond_10

    const-string v3, "DARKNESS"

    invoke-static {v3}, Lcom/netease/filterenginelibrary/gpuimage/FilterType;->valueOf(Ljava/lang/String;)Lcom/netease/filterenginelibrary/gpuimage/FilterType;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/netease/filterenginelibrary/gpuimage/GPUImageView;->a(Lcom/netease/filterenginelibrary/gpuimage/FilterType;F)Lcom/netease/filterenginelibrary/gpuimage/y;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/netease/filterenginelibrary/gpuimage/I;->a(Lcom/netease/filterenginelibrary/gpuimage/y;)V

    :cond_10
    const-string v2, "FADE"

    invoke-interface {v1, v2}, Lorg/dom4j/Element;->element(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v1

    if-eqz v1, :cond_11

    const-string v2, "ratio"

    invoke-interface {v1, v2}, Lorg/dom4j/Element;->attribute(Ljava/lang/String;)Lorg/dom4j/Attribute;

    move-result-object v1

    invoke-interface {v1}, Lorg/dom4j/Attribute;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    div-float/2addr v1, v6

    cmpl-float v2, v1, v5

    if-lez v2, :cond_11

    sget-object v2, Lcom/netease/filterenginelibrary/gpuimage/FilterType;->FADE:Lcom/netease/filterenginelibrary/gpuimage/FilterType;

    invoke-static {v2, v1}, Lcom/netease/filterenginelibrary/gpuimage/GPUImageView;->a(Lcom/netease/filterenginelibrary/gpuimage/FilterType;F)Lcom/netease/filterenginelibrary/gpuimage/y;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/filterenginelibrary/gpuimage/I;->a(Lcom/netease/filterenginelibrary/gpuimage/y;)V

    :cond_11
    iget-object v1, p0, Lcom/netease/filterenginelibrary/gpuimage/GPUImageView;->a:Lcom/netease/filterenginelibrary/gpuimage/r;

    invoke-virtual {v1, v0}, Lcom/netease/filterenginelibrary/gpuimage/r;->a(Lcom/netease/filterenginelibrary/gpuimage/y;)V

    invoke-virtual {p0}, Lcom/netease/filterenginelibrary/gpuimage/GPUImageView;->requestRender()V

    goto/16 :goto_0

    :cond_12
    cmpg-float v3, v2, v5

    if-gez v3, :cond_5

    sget-object v3, Lcom/netease/filterenginelibrary/gpuimage/FilterType;->TEMPERATUREM:Lcom/netease/filterenginelibrary/gpuimage/FilterType;

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-static {v3, v2}, Lcom/netease/filterenginelibrary/gpuimage/GPUImageView;->a(Lcom/netease/filterenginelibrary/gpuimage/FilterType;F)Lcom/netease/filterenginelibrary/gpuimage/y;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/netease/filterenginelibrary/gpuimage/I;->a(Lcom/netease/filterenginelibrary/gpuimage/y;)V

    goto/16 :goto_1

    :cond_13
    cmpg-float v3, v2, v5

    if-gez v3, :cond_7

    sget-object v3, Lcom/netease/filterenginelibrary/gpuimage/FilterType;->EXPOSUREM:Lcom/netease/filterenginelibrary/gpuimage/FilterType;

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-static {v3, v2}, Lcom/netease/filterenginelibrary/gpuimage/GPUImageView;->a(Lcom/netease/filterenginelibrary/gpuimage/FilterType;F)Lcom/netease/filterenginelibrary/gpuimage/y;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/netease/filterenginelibrary/gpuimage/I;->a(Lcom/netease/filterenginelibrary/gpuimage/y;)V

    goto/16 :goto_2

    :cond_14
    cmpg-float v3, v2, v5

    if-gez v3, :cond_8

    sget-object v3, Lcom/netease/filterenginelibrary/gpuimage/FilterType;->CONTRASTM:Lcom/netease/filterenginelibrary/gpuimage/FilterType;

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-static {v3, v2}, Lcom/netease/filterenginelibrary/gpuimage/GPUImageView;->a(Lcom/netease/filterenginelibrary/gpuimage/FilterType;F)Lcom/netease/filterenginelibrary/gpuimage/y;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/netease/filterenginelibrary/gpuimage/I;->a(Lcom/netease/filterenginelibrary/gpuimage/y;)V

    goto/16 :goto_3
.end method

.method protected b(Lcom/netease/filterenginelibrary/gpuimage/FilterType;I)Lcom/netease/filterenginelibrary/gpuimage/y;
    .locals 5

    const/4 v4, 0x1

    const v3, 0x3e99999a    # 0.3f

    invoke-static {}, Lcom/netease/filterenginelibrary/gpuimage/GPUImageView;->l()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/netease/filterenginelibrary/gpuimage/FilterType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No filter of that type!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    new-instance v0, Lcom/netease/filterenginelibrary/gpuimage/M;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "/assets/res/highlight"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".jpg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v3, v4}, Lcom/netease/filterenginelibrary/gpuimage/M;-><init>(Ljava/lang/String;FI)V

    :goto_0
    return-object v0

    :pswitch_2
    new-instance v0, Lcom/netease/filterenginelibrary/gpuimage/M;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "/assets/res/darkness"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".jpg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v3, v4}, Lcom/netease/filterenginelibrary/gpuimage/M;-><init>(Ljava/lang/String;FI)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0xf
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected b(I)V
    .locals 2

    rem-int/lit16 v0, p1, 0x168

    if-eqz v0, :cond_0

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_0

    const/16 v1, 0xb4

    if-eq v0, v1, :cond_0

    const/16 v1, 0x10e

    if-eq v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput v0, p0, Lcom/netease/filterenginelibrary/gpuimage/GPUImageView;->d:I

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/GPUImageView;->a:Lcom/netease/filterenginelibrary/gpuimage/r;

    iget v1, p0, Lcom/netease/filterenginelibrary/gpuimage/GPUImageView;->d:I

    invoke-virtual {v0, v1}, Lcom/netease/filterenginelibrary/gpuimage/r;->a(I)V

    goto :goto_0
.end method

.method protected b(Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/filterenginelibrary/gpuimage/GPUImageView;->e:Landroid/net/Uri;

    return-void
.end method

.method protected b(Lcom/netease/filterenginelibrary/gpuimage/FilterMenu;F)V
    .locals 2

    iput-object p1, p0, Lcom/netease/filterenginelibrary/gpuimage/GPUImageView;->h:Lcom/netease/filterenginelibrary/gpuimage/FilterMenu;

    iput p2, p0, Lcom/netease/filterenginelibrary/gpuimage/GPUImageView;->j:F

    invoke-virtual {p0, p1, p2}, Lcom/netease/filterenginelibrary/gpuimage/GPUImageView;->a(Lcom/netease/filterenginelibrary/gpuimage/FilterMenu;F)Lcom/netease/filterenginelibrary/gpuimage/y;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/GPUImageView;->b:Lcom/netease/filterenginelibrary/gpuimage/y;

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/GPUImageView;->a:Lcom/netease/filterenginelibrary/gpuimage/r;

    iget-object v1, p0, Lcom/netease/filterenginelibrary/gpuimage/GPUImageView;->b:Lcom/netease/filterenginelibrary/gpuimage/y;

    invoke-virtual {v0, v1}, Lcom/netease/filterenginelibrary/gpuimage/r;->a(Lcom/netease/filterenginelibrary/gpuimage/y;)V

    invoke-virtual {p0}, Lcom/netease/filterenginelibrary/gpuimage/GPUImageView;->requestRender()V

    return-void
.end method

.method protected d()V
    .locals 2

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/GPUImageView;->a:Lcom/netease/filterenginelibrary/gpuimage/r;

    iget-object v1, p0, Lcom/netease/filterenginelibrary/gpuimage/GPUImageView;->b:Lcom/netease/filterenginelibrary/gpuimage/y;

    invoke-virtual {v0, v1}, Lcom/netease/filterenginelibrary/gpuimage/r;->a(Lcom/netease/filterenginelibrary/gpuimage/y;)V

    return-void
.end method

.method protected e()Lcom/netease/filterenginelibrary/gpuimage/y;
    .locals 1

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/GPUImageView;->b:Lcom/netease/filterenginelibrary/gpuimage/y;

    return-object v0
.end method

.method protected f()V
    .locals 1

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/GPUImageView;->a:Lcom/netease/filterenginelibrary/gpuimage/r;

    invoke-virtual {v0}, Lcom/netease/filterenginelibrary/gpuimage/r;->f()V

    return-void
.end method

.method protected g()Landroid/graphics/Bitmap;
    .locals 9

    new-instance v7, Ljava/util/concurrent/Semaphore;

    const/4 v0, 0x0

    invoke-direct {v7, v0}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/GPUImageView;->a:Lcom/netease/filterenginelibrary/gpuimage/r;

    invoke-virtual {v0}, Lcom/netease/filterenginelibrary/gpuimage/r;->g()I

    move-result v4

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/GPUImageView;->a:Lcom/netease/filterenginelibrary/gpuimage/r;

    invoke-virtual {v0}, Lcom/netease/filterenginelibrary/gpuimage/r;->h()I

    move-result v5

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/GPUImageView;->a:Lcom/netease/filterenginelibrary/gpuimage/r;

    invoke-virtual {v0}, Lcom/netease/filterenginelibrary/gpuimage/r;->b()I

    move-result v2

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/GPUImageView;->a:Lcom/netease/filterenginelibrary/gpuimage/r;

    invoke-virtual {v0}, Lcom/netease/filterenginelibrary/gpuimage/r;->c()I

    move-result v3

    mul-int v0, v2, v3

    invoke-static {v0}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v6

    iget-object v8, p0, Lcom/netease/filterenginelibrary/gpuimage/GPUImageView;->a:Lcom/netease/filterenginelibrary/gpuimage/r;

    new-instance v0, Lcom/netease/filterenginelibrary/gpuimage/ad;

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/netease/filterenginelibrary/gpuimage/ad;-><init>(Lcom/netease/filterenginelibrary/gpuimage/GPUImageView;IIIILjava/nio/IntBuffer;Ljava/util/concurrent/Semaphore;)V

    invoke-virtual {v8, v0}, Lcom/netease/filterenginelibrary/gpuimage/r;->a(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lcom/netease/filterenginelibrary/gpuimage/GPUImageView;->requestRender()V

    invoke-virtual {v7}, Ljava/util/concurrent/Semaphore;->acquire()V

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    return-object v0
.end method

.method protected h()I
    .locals 1

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/GPUImageView;->a:Lcom/netease/filterenginelibrary/gpuimage/r;

    invoke-virtual {v0}, Lcom/netease/filterenginelibrary/gpuimage/r;->g()I

    move-result v0

    return v0
.end method

.method protected i()I
    .locals 1

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/GPUImageView;->a:Lcom/netease/filterenginelibrary/gpuimage/r;

    invoke-virtual {v0}, Lcom/netease/filterenginelibrary/gpuimage/r;->h()I

    move-result v0

    return v0
.end method

.method protected j()Lcom/netease/filterenginelibrary/gpuimage/FilterType;
    .locals 1

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/GPUImageView;->i:Lcom/netease/filterenginelibrary/gpuimage/FilterType;

    return-object v0
.end method

.method protected onMeasure(II)V
    .locals 6

    const/high16 v5, 0x40000000    # 2.0f

    iget v0, p0, Lcom/netease/filterenginelibrary/gpuimage/GPUImageView;->c:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    const/4 v0, 0x0

    int-to-float v3, v2

    iget v4, p0, Lcom/netease/filterenginelibrary/gpuimage/GPUImageView;->c:F

    div-float/2addr v3, v4

    int-to-float v4, v1

    cmpg-float v3, v3, v4

    if-gez v3, :cond_0

    int-to-float v1, v2

    iget v2, p0, Lcom/netease/filterenginelibrary/gpuimage/GPUImageView;->c:F

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    :goto_0
    invoke-static {v0, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-static {v1, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-super {p0, v0, v1}, Lcom/netease/filterenginelibrary/gpuimage/c;->onMeasure(II)V

    :goto_1
    return-void

    :cond_0
    int-to-float v0, v1

    iget v2, p0, Lcom/netease/filterenginelibrary/gpuimage/GPUImageView;->c:F

    mul-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/netease/filterenginelibrary/gpuimage/c;->onMeasure(II)V

    goto :goto_1
.end method

.method public setLegal(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/netease/filterenginelibrary/gpuimage/GPUImageView;->k:Z

    return-void
.end method
