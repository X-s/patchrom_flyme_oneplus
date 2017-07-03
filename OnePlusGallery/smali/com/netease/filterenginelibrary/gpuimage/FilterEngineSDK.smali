.class public Lcom/netease/filterenginelibrary/gpuimage/FilterEngineSDK;
.super Ljava/lang/Object;


# static fields
.field public static final CLARITY:Ljava/lang/String; = "CLARITY"

.field public static final CONTRAST:Ljava/lang/String; = "CONTRAST"

.field public static final DARKNESS:Ljava/lang/String; = "DARKNESS"

.field public static final EXPOSURE:Ljava/lang/String; = "EXPOSURE"

.field public static final FADE:Ljava/lang/String; = "FADE"

.field public static final GRAIN:Ljava/lang/String; = "GRAIN"

.field public static final HIGHLIGHT:Ljava/lang/String; = "HIGHLIGHT"

.field public static final SATURATION:Ljava/lang/String; = "SATURATION"

.field public static final SHARPNESS:Ljava/lang/String; = "SHARPNESS"

.field public static final TEMPERATURE:Ljava/lang/String; = "TEMPERATURE"

.field public static final VIGNETTE:Ljava/lang/String; = "VIGNETTE"


# instance fields
.field private a:Landroid/net/Uri;

.field private b:Lcom/netease/filterenginelibrary/gpuimage/aa;

.field private c:Lorg/dom4j/Document;

.field private d:Lorg/dom4j/Document;

.field private e:Lorg/dom4j/Document;

.field private f:I

.field private g:I

.field private h:I

.field private i:Lcom/netease/filterenginelibrary/utils/OnRenderingListener;

.field private j:Lcom/netease/filterenginelibrary/utils/OnRenderingPreparationFinishedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/netease/filterenginelibrary/gpuimage/b;

    invoke-direct {v0, p0}, Lcom/netease/filterenginelibrary/gpuimage/b;-><init>(Lcom/netease/filterenginelibrary/gpuimage/FilterEngineSDK;)V

    iput-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/FilterEngineSDK;->i:Lcom/netease/filterenginelibrary/utils/OnRenderingListener;

    return-void
.end method

.method static synthetic a(Lcom/netease/filterenginelibrary/gpuimage/FilterEngineSDK;)Lcom/netease/filterenginelibrary/utils/OnRenderingPreparationFinishedListener;
    .locals 1

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/FilterEngineSDK;->j:Lcom/netease/filterenginelibrary/utils/OnRenderingPreparationFinishedListener;

    return-object v0
.end method

.method private a(Landroid/net/Uri;)Lorg/dom4j/Document;
    .locals 5

    invoke-static {}, Lorg/dom4j/DocumentHelper;->createDocument()Lorg/dom4j/Document;

    move-result-object v0

    const-string v1, "utf-8"

    invoke-interface {v0, v1}, Lorg/dom4j/Document;->setXMLEncoding(Ljava/lang/String;)V

    const-string v1, "param"

    invoke-interface {v0, v1}, Lorg/dom4j/Document;->addElement(Ljava/lang/String;)Lorg/dom4j/Element;

    invoke-interface {v0}, Lorg/dom4j/Document;->getRootElement()Lorg/dom4j/Element;

    move-result-object v1

    const-string v2, "INFO"

    invoke-interface {v1, v2}, Lorg/dom4j/Element;->addElement(Ljava/lang/String;)Lorg/dom4j/Element;

    const-string v2, "INFO"

    invoke-interface {v1, v2}, Lorg/dom4j/Element;->element(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v2

    const-string v3, "oriImgUri"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lorg/dom4j/Element;->addAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Element;

    const-string v2, "INFO"

    invoke-interface {v1, v2}, Lorg/dom4j/Element;->element(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v2

    const-string v3, "archiveImageUri"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Lorg/dom4j/Element;->addAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Element;

    const-string v2, "PRESET"

    invoke-interface {v1, v2}, Lorg/dom4j/Element;->addElement(Ljava/lang/String;)Lorg/dom4j/Element;

    const-string v2, "PRESET"

    invoke-interface {v1, v2}, Lorg/dom4j/Element;->element(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v2

    const-string v3, "type"

    const-string v4, "origin"

    invoke-interface {v2, v3, v4}, Lorg/dom4j/Element;->addAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Element;

    const-string v2, "PRESET"

    invoke-interface {v1, v2}, Lorg/dom4j/Element;->element(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v1

    const-string v2, "ratio"

    const-string v3, "100"

    invoke-interface {v1, v2, v3}, Lorg/dom4j/Element;->addAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Element;

    return-object v0
.end method

.method private a()V
    .locals 1

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/FilterEngineSDK;->d:Lorg/dom4j/Document;

    invoke-interface {v0}, Lorg/dom4j/Document;->clearContent()V

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/FilterEngineSDK;->c:Lorg/dom4j/Document;

    invoke-interface {v0}, Lorg/dom4j/Document;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/dom4j/Document;

    iput-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/FilterEngineSDK;->d:Lorg/dom4j/Document;

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "FILTER_ENGINE_KEY"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    const-string v1, "com.filterenginelibrary.registertime"

    invoke-virtual {p1, v1, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    if-eqz v0, :cond_0

    const-string v2, "app_key"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const-string v2, "is_first_register"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyy-MM-dd"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v3, "register_time"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v2, "is_first_register"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v2, "app_key"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_2
    new-instance v0, Lcom/netease/filterenginelibrary/a/g;

    iget-object v1, p0, Lcom/netease/filterenginelibrary/gpuimage/FilterEngineSDK;->b:Lcom/netease/filterenginelibrary/gpuimage/aa;

    iget-object v2, p0, Lcom/netease/filterenginelibrary/gpuimage/FilterEngineSDK;->i:Lcom/netease/filterenginelibrary/utils/OnRenderingListener;

    invoke-direct {v0, p1, v1, v2}, Lcom/netease/filterenginelibrary/a/g;-><init>(Landroid/content/Context;Lcom/netease/filterenginelibrary/gpuimage/aa;Lcom/netease/filterenginelibrary/utils/OnRenderingListener;)V

    new-array v1, v5, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/netease/filterenginelibrary/a/g;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public callOnRefreshView(II)V
    .locals 1

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/FilterEngineSDK;->b:Lcom/netease/filterenginelibrary/gpuimage/aa;

    invoke-virtual {v0, p1, p2}, Lcom/netease/filterenginelibrary/gpuimage/aa;->a(II)V

    return-void
.end method

.method public cancelSingleEffect()V
    .locals 2

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/FilterEngineSDK;->b:Lcom/netease/filterenginelibrary/gpuimage/aa;

    iget-object v1, p0, Lcom/netease/filterenginelibrary/gpuimage/FilterEngineSDK;->d:Lorg/dom4j/Document;

    invoke-virtual {v0, v1}, Lcom/netease/filterenginelibrary/gpuimage/aa;->a(Lorg/dom4j/Document;)V

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/FilterEngineSDK;->c:Lorg/dom4j/Document;

    invoke-interface {v0}, Lorg/dom4j/Document;->clearContent()V

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/FilterEngineSDK;->d:Lorg/dom4j/Document;

    invoke-interface {v0}, Lorg/dom4j/Document;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/dom4j/Document;

    iput-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/FilterEngineSDK;->c:Lorg/dom4j/Document;

    return-void
.end method

.method public dropCurrentEffect()V
    .locals 2

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/FilterEngineSDK;->e:Lorg/dom4j/Document;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/FilterEngineSDK;->d:Lorg/dom4j/Document;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/FilterEngineSDK;->b:Lcom/netease/filterenginelibrary/gpuimage/aa;

    iget-object v1, p0, Lcom/netease/filterenginelibrary/gpuimage/FilterEngineSDK;->e:Lorg/dom4j/Document;

    invoke-virtual {v0, v1}, Lcom/netease/filterenginelibrary/gpuimage/aa;->a(Lorg/dom4j/Document;)V

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/FilterEngineSDK;->d:Lorg/dom4j/Document;

    invoke-interface {v0}, Lorg/dom4j/Document;->clearContent()V

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/FilterEngineSDK;->e:Lorg/dom4j/Document;

    invoke-interface {v0}, Lorg/dom4j/Document;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/dom4j/Document;

    iput-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/FilterEngineSDK;->d:Lorg/dom4j/Document;

    goto :goto_0
.end method

.method public getCurrentFilterEffectBitmap(I)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/FilterEngineSDK;->b:Lcom/netease/filterenginelibrary/gpuimage/aa;

    invoke-virtual {v0, p1}, Lcom/netease/filterenginelibrary/gpuimage/aa;->b(I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentPSBitmap()Landroid/graphics/Bitmap;
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/FilterEngineSDK;->e:Lorg/dom4j/Document;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/FilterEngineSDK;->c:Lorg/dom4j/Document;

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "FilterSDK"

    const-string v2, "nothing has changed"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/FilterEngineSDK;->e:Lorg/dom4j/Document;

    invoke-interface {v0}, Lorg/dom4j/Document;->clearContent()V

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/FilterEngineSDK;->c:Lorg/dom4j/Document;

    invoke-interface {v0}, Lorg/dom4j/Document;->clearContent()V

    iput-object v1, p0, Lcom/netease/filterenginelibrary/gpuimage/FilterEngineSDK;->c:Lorg/dom4j/Document;

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/FilterEngineSDK;->d:Lorg/dom4j/Document;

    invoke-interface {v0}, Lorg/dom4j/Document;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/dom4j/Document;

    iput-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/FilterEngineSDK;->e:Lorg/dom4j/Document;

    :try_start_0
    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/FilterEngineSDK;->b:Lcom/netease/filterenginelibrary/gpuimage/aa;

    invoke-virtual {v0}, Lcom/netease/filterenginelibrary/gpuimage/aa;->c()Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    move-object v0, v1

    goto :goto_0
.end method

.method public getPreColorRatio()I
    .locals 1

    iget v0, p0, Lcom/netease/filterenginelibrary/gpuimage/FilterEngineSDK;->g:I

    return v0
.end method

.method public getPreColorType()I
    .locals 1

    iget v0, p0, Lcom/netease/filterenginelibrary/gpuimage/FilterEngineSDK;->f:I

    return v0
.end method

.method public getPrePSRatio()I
    .locals 1

    iget v0, p0, Lcom/netease/filterenginelibrary/gpuimage/FilterEngineSDK;->h:I

    return v0
.end method

.method public release()V
    .locals 1

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/FilterEngineSDK;->b:Lcom/netease/filterenginelibrary/gpuimage/aa;

    invoke-virtual {v0}, Lcom/netease/filterenginelibrary/gpuimage/aa;->a()V

    return-void
.end method

.method public setCurrentBitmapView(Landroid/graphics/Bitmap;)V
    .locals 1

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/FilterEngineSDK;->b:Lcom/netease/filterenginelibrary/gpuimage/aa;

    invoke-virtual {v0, p1}, Lcom/netease/filterenginelibrary/gpuimage/aa;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public setImageResourceUri(Landroid/net/Uri;)V
    .locals 1

    iput-object p1, p0, Lcom/netease/filterenginelibrary/gpuimage/FilterEngineSDK;->a:Landroid/net/Uri;

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/FilterEngineSDK;->b:Lcom/netease/filterenginelibrary/gpuimage/aa;

    invoke-virtual {v0, p1}, Lcom/netease/filterenginelibrary/gpuimage/aa;->a(Landroid/net/Uri;)V

    return-void
.end method

.method public setOnBitmapLoadCompleteListener(Lcom/netease/filterenginelibrary/utils/OnBitmapTextureLoadCompleteListener;)V
    .locals 1

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/FilterEngineSDK;->b:Lcom/netease/filterenginelibrary/gpuimage/aa;

    invoke-virtual {v0, p1}, Lcom/netease/filterenginelibrary/gpuimage/aa;->a(Lcom/netease/filterenginelibrary/utils/OnBitmapTextureLoadCompleteListener;)V

    return-void
.end method

.method public setOnBufferGenerateListener(Lcom/netease/filterenginelibrary/utils/OnBufferGenerateListener;)V
    .locals 1

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/FilterEngineSDK;->b:Lcom/netease/filterenginelibrary/gpuimage/aa;

    invoke-virtual {v0, p1}, Lcom/netease/filterenginelibrary/gpuimage/aa;->a(Lcom/netease/filterenginelibrary/utils/OnBufferGenerateListener;)V

    return-void
.end method

.method public setOnRenderingPreparationFinishedListener(Lcom/netease/filterenginelibrary/utils/OnRenderingPreparationFinishedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/filterenginelibrary/gpuimage/FilterEngineSDK;->j:Lcom/netease/filterenginelibrary/utils/OnRenderingPreparationFinishedListener;

    return-void
.end method

.method public setPSMode(Ljava/lang/String;I)V
    .locals 4

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/FilterEngineSDK;->b:Lcom/netease/filterenginelibrary/gpuimage/aa;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/FilterEngineSDK;->c:Lorg/dom4j/Document;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/FilterEngineSDK;->a:Landroid/net/Uri;

    invoke-direct {p0, v0}, Lcom/netease/filterenginelibrary/gpuimage/FilterEngineSDK;->a(Landroid/net/Uri;)Lorg/dom4j/Document;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/FilterEngineSDK;->d:Lorg/dom4j/Document;

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/FilterEngineSDK;->d:Lorg/dom4j/Document;

    invoke-interface {v0}, Lorg/dom4j/Document;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/dom4j/Document;

    iput-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/FilterEngineSDK;->e:Lorg/dom4j/Document;

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/FilterEngineSDK;->d:Lorg/dom4j/Document;

    invoke-interface {v0}, Lorg/dom4j/Document;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/dom4j/Document;

    iput-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/FilterEngineSDK;->c:Lorg/dom4j/Document;

    :cond_2
    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/FilterEngineSDK;->c:Lorg/dom4j/Document;

    invoke-interface {v0}, Lorg/dom4j/Document;->getRootElement()Lorg/dom4j/Element;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/dom4j/Element;->element(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string v2, "ratio"

    invoke-interface {v1, v2}, Lorg/dom4j/Element;->attributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/netease/filterenginelibrary/gpuimage/FilterEngineSDK;->h:I

    :goto_1
    invoke-interface {v0, p1}, Lorg/dom4j/Element;->element(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v0

    const-string v1, "ratio"

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->attribute(Ljava/lang/String;)Lorg/dom4j/Attribute;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/dom4j/Attribute;->setValue(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/FilterEngineSDK;->b:Lcom/netease/filterenginelibrary/gpuimage/aa;

    iget-object v1, p0, Lcom/netease/filterenginelibrary/gpuimage/FilterEngineSDK;->c:Lorg/dom4j/Document;

    invoke-virtual {v0, v1}, Lcom/netease/filterenginelibrary/gpuimage/aa;->a(Lorg/dom4j/Document;)V

    invoke-direct {p0}, Lcom/netease/filterenginelibrary/gpuimage/FilterEngineSDK;->a()V

    goto :goto_0

    :cond_3
    invoke-interface {v0, p1}, Lorg/dom4j/Element;->addElement(Ljava/lang/String;)Lorg/dom4j/Element;

    invoke-interface {v0, p1}, Lorg/dom4j/Element;->element(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v1

    const-string v2, "ratio"

    const-string v3, "0"

    invoke-interface {v1, v2, v3}, Lorg/dom4j/Element;->addAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Element;

    goto :goto_1
.end method

.method public setPSMode(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/FilterEngineSDK;->b:Lcom/netease/filterenginelibrary/gpuimage/aa;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/FilterEngineSDK;->c:Lorg/dom4j/Document;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/FilterEngineSDK;->a:Landroid/net/Uri;

    invoke-direct {p0, v0}, Lcom/netease/filterenginelibrary/gpuimage/FilterEngineSDK;->a(Landroid/net/Uri;)Lorg/dom4j/Document;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/FilterEngineSDK;->d:Lorg/dom4j/Document;

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/FilterEngineSDK;->d:Lorg/dom4j/Document;

    invoke-interface {v0}, Lorg/dom4j/Document;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/dom4j/Document;

    iput-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/FilterEngineSDK;->e:Lorg/dom4j/Document;

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/FilterEngineSDK;->d:Lorg/dom4j/Document;

    invoke-interface {v0}, Lorg/dom4j/Document;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/dom4j/Document;

    iput-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/FilterEngineSDK;->c:Lorg/dom4j/Document;

    :cond_2
    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/FilterEngineSDK;->c:Lorg/dom4j/Document;

    invoke-interface {v0}, Lorg/dom4j/Document;->getRootElement()Lorg/dom4j/Element;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/dom4j/Element;->element(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string v2, "colortype"

    invoke-interface {v1, v2}, Lorg/dom4j/Element;->attributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/netease/filterenginelibrary/gpuimage/FilterEngineSDK;->f:I

    const-string v2, "ratio"

    invoke-interface {v1, v2}, Lorg/dom4j/Element;->attributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/netease/filterenginelibrary/gpuimage/FilterEngineSDK;->g:I

    :goto_1
    invoke-interface {v0, p1}, Lorg/dom4j/Element;->element(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v1

    const-string v2, "colortype"

    invoke-interface {v1, v2}, Lorg/dom4j/Element;->attribute(Ljava/lang/String;)Lorg/dom4j/Attribute;

    move-result-object v1

    invoke-interface {v1, p2}, Lorg/dom4j/Attribute;->setValue(Ljava/lang/String;)V

    invoke-interface {v0, p1}, Lorg/dom4j/Element;->element(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v0

    const-string v1, "ratio"

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->attribute(Ljava/lang/String;)Lorg/dom4j/Attribute;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/dom4j/Attribute;->setValue(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/FilterEngineSDK;->b:Lcom/netease/filterenginelibrary/gpuimage/aa;

    iget-object v1, p0, Lcom/netease/filterenginelibrary/gpuimage/FilterEngineSDK;->c:Lorg/dom4j/Document;

    invoke-virtual {v0, v1}, Lcom/netease/filterenginelibrary/gpuimage/aa;->a(Lorg/dom4j/Document;)V

    invoke-direct {p0}, Lcom/netease/filterenginelibrary/gpuimage/FilterEngineSDK;->a()V

    goto :goto_0

    :cond_3
    invoke-interface {v0, p1}, Lorg/dom4j/Element;->addElement(Ljava/lang/String;)Lorg/dom4j/Element;

    invoke-interface {v0, p1}, Lorg/dom4j/Element;->element(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v1

    const-string v2, "ratio"

    const-string v3, "0"

    invoke-interface {v1, v2, v3}, Lorg/dom4j/Element;->addAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Element;

    invoke-interface {v0, p1}, Lorg/dom4j/Element;->element(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v1

    const-string v2, "colortype"

    const-string v3, "-1"

    invoke-interface {v1, v2, v3}, Lorg/dom4j/Element;->addAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Element;

    goto :goto_1
.end method

.method public setPreviewSurface(Landroid/content/Context;Landroid/view/Surface;)V
    .locals 1

    new-instance v0, Lcom/netease/filterenginelibrary/gpuimage/aa;

    invoke-direct {v0, p1, p2}, Lcom/netease/filterenginelibrary/gpuimage/aa;-><init>(Landroid/content/Context;Landroid/view/Surface;)V

    iput-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/FilterEngineSDK;->b:Lcom/netease/filterenginelibrary/gpuimage/aa;

    invoke-direct {p0, p1}, Lcom/netease/filterenginelibrary/gpuimage/FilterEngineSDK;->a(Landroid/content/Context;)V

    return-void
.end method

.method public setWidgetBackground(FFFF)V
    .locals 1

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/FilterEngineSDK;->b:Lcom/netease/filterenginelibrary/gpuimage/aa;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/netease/filterenginelibrary/gpuimage/aa;->a(FFFF)V

    return-void
.end method

.method public startFilterRendering(Lcom/netease/filterenginelibrary/gpuimage/FilterMenu;F)V
    .locals 1

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/FilterEngineSDK;->b:Lcom/netease/filterenginelibrary/gpuimage/aa;

    invoke-virtual {v0, p1, p2}, Lcom/netease/filterenginelibrary/gpuimage/aa;->b(Lcom/netease/filterenginelibrary/gpuimage/FilterMenu;F)V

    return-void
.end method
