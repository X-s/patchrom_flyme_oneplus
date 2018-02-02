.class public Lcom/amap/api/maps2d/model/TextOptions;
.super Ljava/lang/Object;
.source "TextOptions.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Lcom/amap/api/maps2d/model/TextOptionsCreator;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Landroid/graphics/Typeface;

.field private c:Z

.field private d:F

.field private e:Lcom/amap/api/maps2d/model/LatLng;

.field private f:F

.field private g:I

.field private h:Ljava/lang/Object;

.field private i:I

.field private j:I

.field private k:I

.field private l:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    new-instance v0, Lcom/amap/api/maps2d/model/TextOptionsCreator;

    invoke-direct {v0}, Lcom/amap/api/maps2d/model/TextOptionsCreator;-><init>()V

    sput-object v0, Lcom/amap/api/maps2d/model/TextOptions;->CREATOR:Lcom/amap/api/maps2d/model/TextOptionsCreator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    iput-object v0, p0, Lcom/amap/api/maps2d/model/TextOptions;->b:Landroid/graphics/Typeface;

    .line 31
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/maps2d/model/TextOptions;->c:Z

    const/4 v0, 0x0

    .line 37
    iput v0, p0, Lcom/amap/api/maps2d/model/TextOptions;->f:F

    const/4 v0, 0x0

    .line 39
    iput v0, p0, Lcom/amap/api/maps2d/model/TextOptions;->g:I

    const/high16 v0, -0x1000000

    .line 43
    iput v0, p0, Lcom/amap/api/maps2d/model/TextOptions;->i:I

    const/16 v0, 0x14

    .line 45
    iput v0, p0, Lcom/amap/api/maps2d/model/TextOptions;->j:I

    const/4 v0, 0x3

    .line 47
    iput v0, p0, Lcom/amap/api/maps2d/model/TextOptions;->k:I

    const/4 v0, 0x6

    .line 49
    iput v0, p0, Lcom/amap/api/maps2d/model/TextOptions;->l:I

    return-void
.end method


# virtual methods
.method public align(II)Lcom/amap/api/maps2d/model/TextOptions;
    .locals 0

    .prologue
    .line 125
    iput p1, p0, Lcom/amap/api/maps2d/model/TextOptions;->k:I

    .line 126
    iput p2, p0, Lcom/amap/api/maps2d/model/TextOptions;->l:I

    .line 127
    return-object p0
.end method

.method public backgroundColor(I)Lcom/amap/api/maps2d/model/TextOptions;
    .locals 0

    .prologue
    .line 137
    iput p1, p0, Lcom/amap/api/maps2d/model/TextOptions;->g:I

    .line 138
    return-object p0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 285
    return v0
.end method

.method public fontColor(I)Lcom/amap/api/maps2d/model/TextOptions;
    .locals 0

    .prologue
    .line 159
    iput p1, p0, Lcom/amap/api/maps2d/model/TextOptions;->i:I

    .line 160
    return-object p0
.end method

.method public fontSize(I)Lcom/amap/api/maps2d/model/TextOptions;
    .locals 0

    .prologue
    .line 170
    iput p1, p0, Lcom/amap/api/maps2d/model/TextOptions;->j:I

    .line 171
    return-object p0
.end method

.method public getAlignX()I
    .locals 1

    .prologue
    .line 180
    iget v0, p0, Lcom/amap/api/maps2d/model/TextOptions;->k:I

    return v0
.end method

.method public getAlignY()I
    .locals 1

    .prologue
    .line 189
    iget v0, p0, Lcom/amap/api/maps2d/model/TextOptions;->l:I

    return v0
.end method

.method public getBackgroundColor()I
    .locals 1

    .prologue
    .line 198
    iget v0, p0, Lcom/amap/api/maps2d/model/TextOptions;->g:I

    return v0
.end method

.method public getFontColor()I
    .locals 1

    .prologue
    .line 216
    iget v0, p0, Lcom/amap/api/maps2d/model/TextOptions;->i:I

    return v0
.end method

.method public getFontSize()I
    .locals 1

    .prologue
    .line 225
    iget v0, p0, Lcom/amap/api/maps2d/model/TextOptions;->j:I

    return v0
.end method

.method public getObject()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/amap/api/maps2d/model/TextOptions;->h:Ljava/lang/Object;

    return-object v0
.end method

.method public getPosition()Lcom/amap/api/maps2d/model/LatLng;
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/amap/api/maps2d/model/TextOptions;->e:Lcom/amap/api/maps2d/model/LatLng;

    return-object v0
.end method

.method public getRotate()F
    .locals 1

    .prologue
    .line 243
    iget v0, p0, Lcom/amap/api/maps2d/model/TextOptions;->f:F

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/amap/api/maps2d/model/TextOptions;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getTypeface()Landroid/graphics/Typeface;
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/amap/api/maps2d/model/TextOptions;->b:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public getZIndex()F
    .locals 1

    .prologue
    .line 270
    iget v0, p0, Lcom/amap/api/maps2d/model/TextOptions;->d:F

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 279
    iget-boolean v0, p0, Lcom/amap/api/maps2d/model/TextOptions;->c:Z

    return v0
.end method

.method public position(Lcom/amap/api/maps2d/model/LatLng;)Lcom/amap/api/maps2d/model/TextOptions;
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lcom/amap/api/maps2d/model/TextOptions;->e:Lcom/amap/api/maps2d/model/LatLng;

    .line 103
    return-object p0
.end method

.method public rotate(F)Lcom/amap/api/maps2d/model/TextOptions;
    .locals 0

    .prologue
    .line 113
    iput p1, p0, Lcom/amap/api/maps2d/model/TextOptions;->f:F

    .line 114
    return-object p0
.end method

.method public setObject(Ljava/lang/Object;)Lcom/amap/api/maps2d/model/TextOptions;
    .locals 0

    .prologue
    .line 148
    iput-object p1, p0, Lcom/amap/api/maps2d/model/TextOptions;->h:Ljava/lang/Object;

    .line 149
    return-object p0
.end method

.method public text(Ljava/lang/String;)Lcom/amap/api/maps2d/model/TextOptions;
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/amap/api/maps2d/model/TextOptions;->a:Ljava/lang/String;

    .line 59
    return-object p0
.end method

.method public typeface(Landroid/graphics/Typeface;)Lcom/amap/api/maps2d/model/TextOptions;
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/amap/api/maps2d/model/TextOptions;->b:Landroid/graphics/Typeface;

    .line 70
    return-object p0
.end method

.method public visible(Z)Lcom/amap/api/maps2d/model/TextOptions;
    .locals 0

    .prologue
    .line 80
    iput-boolean p1, p0, Lcom/amap/api/maps2d/model/TextOptions;->c:Z

    .line 81
    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 292
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 293
    iget-object v2, p0, Lcom/amap/api/maps2d/model/TextOptions;->e:Lcom/amap/api/maps2d/model/LatLng;

    if-nez v2, :cond_0

    .line 297
    :goto_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 298
    iget-object v1, p0, Lcom/amap/api/maps2d/model/TextOptions;->a:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 299
    iget-object v1, p0, Lcom/amap/api/maps2d/model/TextOptions;->b:Landroid/graphics/Typeface;

    invoke-virtual {v1}, Landroid/graphics/Typeface;->getStyle()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 300
    iget v1, p0, Lcom/amap/api/maps2d/model/TextOptions;->f:F

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 301
    iget v1, p0, Lcom/amap/api/maps2d/model/TextOptions;->k:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 302
    iget v1, p0, Lcom/amap/api/maps2d/model/TextOptions;->l:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 303
    iget v1, p0, Lcom/amap/api/maps2d/model/TextOptions;->g:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 304
    iget v1, p0, Lcom/amap/api/maps2d/model/TextOptions;->i:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 305
    iget v1, p0, Lcom/amap/api/maps2d/model/TextOptions;->j:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 306
    iget v1, p0, Lcom/amap/api/maps2d/model/TextOptions;->d:F

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 307
    iget-boolean v1, p0, Lcom/amap/api/maps2d/model/TextOptions;->c:Z

    if-nez v1, :cond_1

    :goto_1
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 310
    iget-object v0, p0, Lcom/amap/api/maps2d/model/TextOptions;->h:Ljava/lang/Object;

    instance-of v0, v0, Landroid/os/Parcelable;

    if-nez v0, :cond_2

    .line 316
    :goto_2
    return-void

    :cond_0
    const-string/jumbo v2, "lat"

    .line 294
    iget-object v3, p0, Lcom/amap/api/maps2d/model/TextOptions;->e:Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v4, v3, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    const-string/jumbo v2, "lng"

    .line 295
    iget-object v3, p0, Lcom/amap/api/maps2d/model/TextOptions;->e:Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v4, v3, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 307
    goto :goto_1

    .line 311
    :cond_2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "obj"

    .line 312
    iget-object v0, p0, Lcom/amap/api/maps2d/model/TextOptions;->h:Ljava/lang/Object;

    check-cast v0, Landroid/os/Parcelable;

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 313
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    goto :goto_2
.end method

.method public zIndex(F)Lcom/amap/api/maps2d/model/TextOptions;
    .locals 0

    .prologue
    .line 91
    iput p1, p0, Lcom/amap/api/maps2d/model/TextOptions;->d:F

    .line 92
    return-object p0
.end method
