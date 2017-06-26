.class public Lcom/caverock/androidsvg/SVGImageView;
.super Landroid/widget/ImageView;
.source "SVGImageView.java"


# static fields
.field private static setLayerTypeMethod:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    sput-object v0, Lcom/caverock/androidsvg/SVGImageView;->setLayerTypeMethod:Ljava/lang/reflect/Method;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 58
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 50
    :try_start_0
    const-class v0, Landroid/view/View;

    const-string v1, "setLayerType"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Landroid/graphics/Paint;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/caverock/androidsvg/SVGImageView;->setLayerTypeMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    :goto_0
    return-void

    .line 52
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v5, 0x0

    .line 64
    invoke-direct {p0, p1, p2, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    :try_start_0
    const-class v0, Landroid/view/View;

    const-string v1, "setLayerType"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Landroid/graphics/Paint;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/caverock/androidsvg/SVGImageView;->setLayerTypeMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    :goto_0
    invoke-direct {p0, p2, v5}, Lcom/caverock/androidsvg/SVGImageView;->init(Landroid/util/AttributeSet;I)V

    .line 66
    return-void

    .line 52
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 71
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    :try_start_0
    const-class v0, Landroid/view/View;

    const-string v1, "setLayerType"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Landroid/graphics/Paint;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/caverock/androidsvg/SVGImageView;->setLayerTypeMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    :goto_0
    invoke-direct {p0, p2, p3}, Lcom/caverock/androidsvg/SVGImageView;->init(Landroid/util/AttributeSet;I)V

    .line 73
    return-void

    .line 52
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private init(Landroid/util/AttributeSet;I)V
    .locals 8
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "defStyle"    # I

    .prologue
    const/4 v7, -0x1

    const/4 v6, 0x0

    .line 78
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGImageView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    .line 79
    sget-object v5, Lcom/caverock/androidsvg/R$styleable;->SVGImageView:[I

    invoke-virtual {v4, p1, v5, p2, v6}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 82
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v4, 0x0

    const/4 v5, -0x1

    :try_start_0
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 83
    .local v1, "resourceId":I
    if-eq v1, v7, :cond_0

    .line 84
    invoke-virtual {p0, v1}, Lcom/caverock/androidsvg/SVGImageView;->setImageResource(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 99
    :goto_0
    return-void

    .line 88
    :cond_0
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 89
    .local v3, "url":Ljava/lang/String;
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 90
    .local v2, "uri":Landroid/net/Uri;
    invoke-direct {p0, v2}, Lcom/caverock/androidsvg/SVGImageView;->internalSetImageURI(Landroid/net/Uri;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    if-eqz v4, :cond_1

    .line 97
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    .line 94
    :cond_1
    :try_start_2
    invoke-virtual {p0, v3}, Lcom/caverock/androidsvg/SVGImageView;->setImageAsset(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 97
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    .line 96
    .end local v1    # "resourceId":I
    .end local v2    # "uri":Landroid/net/Uri;
    .end local v3    # "url":Ljava/lang/String;
    :catchall_0
    move-exception v4

    .line 97
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 98
    throw v4
.end method

.method private internalSetImageURI(Landroid/net/Uri;)Z
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 155
    const/4 v1, 0x0

    .line 157
    .local v1, "is":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGImageView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    .line 158
    invoke-static {v1}, Lcom/caverock/androidsvg/SVG;->getFromInputStream(Ljava/io/InputStream;)Lcom/caverock/androidsvg/SVG;

    move-result-object v2

    .line 159
    .local v2, "svg":Lcom/caverock/androidsvg/SVG;
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGImageView;->setSoftwareLayerType()V

    .line 160
    new-instance v3, Landroid/graphics/drawable/PictureDrawable;

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVG;->renderToPicture()Landroid/graphics/Picture;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/graphics/drawable/PictureDrawable;-><init>(Landroid/graphics/Picture;)V

    invoke-virtual {p0, v3}, Lcom/caverock/androidsvg/SVGImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 170
    if-eqz v1, :cond_0

    .line 171
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 161
    :cond_0
    :goto_0
    const/4 v3, 0x1

    .line 165
    .end local v2    # "svg":Lcom/caverock/androidsvg/SVG;
    :goto_1
    return v3

    .line 163
    :catch_0
    move-exception v0

    .line 164
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v3, "ImageView"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Unable to open content: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 170
    if-eqz v1, :cond_1

    .line 171
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 165
    :cond_1
    :goto_2
    const/4 v3, 0x0

    goto :goto_1

    .line 167
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    .line 170
    if-eqz v1, :cond_2

    .line 171
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 174
    :cond_2
    :goto_3
    throw v3

    .line 173
    .restart local v2    # "svg":Lcom/caverock/androidsvg/SVG;
    :catch_1
    move-exception v3

    goto :goto_0

    .end local v2    # "svg":Lcom/caverock/androidsvg/SVG;
    .restart local v0    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v3

    goto :goto_2

    .end local v0    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v4

    goto :goto_3
.end method

.method private setSoftwareLayerType()V
    .locals 5

    .prologue
    .line 183
    sget-object v1, Lcom/caverock/androidsvg/SVGImageView;->setLayerTypeMethod:Ljava/lang/reflect/Method;

    if-nez v1, :cond_0

    .line 194
    :goto_0
    return-void

    .line 188
    :cond_0
    :try_start_0
    sget-object v1, Lcom/caverock/androidsvg/SVGImageView;->setLayerTypeMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    aput-object v4, v2, v3

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 190
    :catch_0
    move-exception v0

    .line 192
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SVGImageView"

    const-string v2, "Unexpected failure calling setLayerType"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public setImageAsset(Ljava/lang/String;)V
    .locals 5
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 139
    :try_start_0
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGImageView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/caverock/androidsvg/SVG;->getFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Lcom/caverock/androidsvg/SVG;

    move-result-object v1

    .line 140
    .local v1, "svg":Lcom/caverock/androidsvg/SVG;
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGImageView;->setSoftwareLayerType()V

    .line 141
    new-instance v2, Landroid/graphics/drawable/PictureDrawable;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVG;->renderToPicture()Landroid/graphics/Picture;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/graphics/drawable/PictureDrawable;-><init>(Landroid/graphics/Picture;)V

    invoke-virtual {p0, v2}, Lcom/caverock/androidsvg/SVGImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    .end local v1    # "svg":Lcom/caverock/androidsvg/SVG;
    :goto_0
    return-void

    .line 143
    :catch_0
    move-exception v0

    .line 145
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "SVGImageView"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unable to find asset file: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setImageResource(I)V
    .locals 5
    .param p1, "resourceId"    # I

    .prologue
    .line 111
    :try_start_0
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGImageView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/caverock/androidsvg/SVG;->getFromResource(Landroid/content/Context;I)Lcom/caverock/androidsvg/SVG;

    move-result-object v1

    .line 112
    .local v1, "svg":Lcom/caverock/androidsvg/SVG;
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGImageView;->setSoftwareLayerType()V

    .line 113
    new-instance v2, Landroid/graphics/drawable/PictureDrawable;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVG;->renderToPicture()Landroid/graphics/Picture;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/graphics/drawable/PictureDrawable;-><init>(Landroid/graphics/Picture;)V

    invoke-virtual {p0, v2}, Lcom/caverock/androidsvg/SVGImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Lcom/caverock/androidsvg/SVGParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    .end local v1    # "svg":Lcom/caverock/androidsvg/SVG;
    :goto_0
    return-void

    .line 115
    :catch_0
    move-exception v0

    .line 117
    .local v0, "e":Lcom/caverock/androidsvg/SVGParseException;
    const-string v2, "SVGImageView"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unable to find resource: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 128
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGImageView;->internalSetImageURI(Landroid/net/Uri;)Z

    .line 129
    return-void
.end method
