.class public final Lcom/amap/api/maps2d/model/MarkerOptions;
.super Ljava/lang/Object;
.source "MarkerOptions.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Lcom/amap/api/maps2d/model/g;


# instance fields
.field a:Ljava/lang/String;

.field private b:Lcom/amap/api/maps2d/model/LatLng;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:F

.field private f:F

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:F

.field private k:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/maps2d/model/BitmapDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private l:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    new-instance v0, Lcom/amap/api/maps2d/model/g;

    invoke-direct {v0}, Lcom/amap/api/maps2d/model/g;-><init>()V

    sput-object v0, Lcom/amap/api/maps2d/model/MarkerOptions;->CREATOR:Lcom/amap/api/maps2d/model/g;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f000000    # 0.5f

    .line 21
    iput v0, p0, Lcom/amap/api/maps2d/model/MarkerOptions;->e:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 22
    iput v0, p0, Lcom/amap/api/maps2d/model/MarkerOptions;->f:F

    .line 23
    iput-boolean v1, p0, Lcom/amap/api/maps2d/model/MarkerOptions;->g:Z

    .line 24
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/maps2d/model/MarkerOptions;->h:Z

    .line 26
    iput-boolean v1, p0, Lcom/amap/api/maps2d/model/MarkerOptions;->i:Z

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/maps2d/model/MarkerOptions;->k:Ljava/util/ArrayList;

    const/16 v0, 0x14

    .line 33
    iput v0, p0, Lcom/amap/api/maps2d/model/MarkerOptions;->l:I

    .line 46
    return-void
.end method

.method private a()V
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Lcom/amap/api/maps2d/model/MarkerOptions;->k:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 324
    :goto_0
    return-void

    .line 322
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/maps2d/model/MarkerOptions;->k:Ljava/util/ArrayList;

    goto :goto_0
.end method


# virtual methods
.method public anchor(FF)Lcom/amap/api/maps2d/model/MarkerOptions;
    .locals 0

    .prologue
    .line 145
    iput p1, p0, Lcom/amap/api/maps2d/model/MarkerOptions;->e:F

    .line 146
    iput p2, p0, Lcom/amap/api/maps2d/model/MarkerOptions;->f:F

    .line 147
    return-object p0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 328
    return v0
.end method

.method public draggable(Z)Lcom/amap/api/maps2d/model/MarkerOptions;
    .locals 0

    .prologue
    .line 179
    iput-boolean p1, p0, Lcom/amap/api/maps2d/model/MarkerOptions;->g:Z

    .line 180
    return-object p0
.end method

.method public getAnchorU()F
    .locals 1

    .prologue
    .line 278
    iget v0, p0, Lcom/amap/api/maps2d/model/MarkerOptions;->e:F

    return v0
.end method

.method public getAnchorV()F
    .locals 1

    .prologue
    .line 288
    iget v0, p0, Lcom/amap/api/maps2d/model/MarkerOptions;->f:F

    return v0
.end method

.method public getIcon()Lcom/amap/api/maps2d/model/BitmapDescriptor;
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 264
    iget-object v0, p0, Lcom/amap/api/maps2d/model/MarkerOptions;->k:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 267
    :cond_0
    return-object v2

    .line 264
    :cond_1
    iget-object v0, p0, Lcom/amap/api/maps2d/model/MarkerOptions;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/amap/api/maps2d/model/MarkerOptions;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps2d/model/BitmapDescriptor;

    return-object v0
.end method

.method public getIcons()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/maps2d/model/BitmapDescriptor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 83
    iget-object v0, p0, Lcom/amap/api/maps2d/model/MarkerOptions;->k:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getPeriod()I
    .locals 1

    .prologue
    .line 108
    iget v0, p0, Lcom/amap/api/maps2d/model/MarkerOptions;->l:I

    return v0
.end method

.method public getPosition()Lcom/amap/api/maps2d/model/LatLng;
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/amap/api/maps2d/model/MarkerOptions;->b:Lcom/amap/api/maps2d/model/LatLng;

    return-object v0
.end method

.method public getSnippet()Ljava/lang/String;
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcom/amap/api/maps2d/model/MarkerOptions;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/amap/api/maps2d/model/MarkerOptions;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getZIndex()F
    .locals 1

    .prologue
    .line 225
    iget v0, p0, Lcom/amap/api/maps2d/model/MarkerOptions;->j:F

    return v0
.end method

.method public icon(Lcom/amap/api/maps2d/model/BitmapDescriptor;)Lcom/amap/api/maps2d/model/MarkerOptions;
    .locals 1

    .prologue
    .line 129
    invoke-direct {p0}, Lcom/amap/api/maps2d/model/MarkerOptions;->a()V

    .line 130
    iget-object v0, p0, Lcom/amap/api/maps2d/model/MarkerOptions;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 131
    iget-object v0, p0, Lcom/amap/api/maps2d/model/MarkerOptions;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    return-object p0
.end method

.method public icons(Ljava/util/ArrayList;)Lcom/amap/api/maps2d/model/MarkerOptions;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/maps2d/model/BitmapDescriptor;",
            ">;)",
            "Lcom/amap/api/maps2d/model/MarkerOptions;"
        }
    .end annotation

    .prologue
    .line 73
    iput-object p1, p0, Lcom/amap/api/maps2d/model/MarkerOptions;->k:Ljava/util/ArrayList;

    .line 74
    return-object p0
.end method

.method public isDraggable()Z
    .locals 1

    .prologue
    .line 298
    iget-boolean v0, p0, Lcom/amap/api/maps2d/model/MarkerOptions;->g:Z

    return v0
.end method

.method public isGps()Z
    .locals 1

    .prologue
    .line 317
    iget-boolean v0, p0, Lcom/amap/api/maps2d/model/MarkerOptions;->i:Z

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 307
    iget-boolean v0, p0, Lcom/amap/api/maps2d/model/MarkerOptions;->h:Z

    return v0
.end method

.method public period(I)Lcom/amap/api/maps2d/model/MarkerOptions;
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 94
    if-le p1, v0, :cond_0

    .line 97
    iput p1, p0, Lcom/amap/api/maps2d/model/MarkerOptions;->l:I

    .line 99
    :goto_0
    return-object p0

    .line 95
    :cond_0
    iput v0, p0, Lcom/amap/api/maps2d/model/MarkerOptions;->l:I

    goto :goto_0
.end method

.method public position(Lcom/amap/api/maps2d/model/LatLng;)Lcom/amap/api/maps2d/model/MarkerOptions;
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lcom/amap/api/maps2d/model/MarkerOptions;->b:Lcom/amap/api/maps2d/model/LatLng;

    .line 119
    return-object p0
.end method

.method public setGps(Z)Lcom/amap/api/maps2d/model/MarkerOptions;
    .locals 0

    .prologue
    .line 202
    iput-boolean p1, p0, Lcom/amap/api/maps2d/model/MarkerOptions;->i:Z

    .line 203
    return-object p0
.end method

.method public snippet(Ljava/lang/String;)Lcom/amap/api/maps2d/model/MarkerOptions;
    .locals 0

    .prologue
    .line 168
    iput-object p1, p0, Lcom/amap/api/maps2d/model/MarkerOptions;->d:Ljava/lang/String;

    .line 169
    return-object p0
.end method

.method public title(Ljava/lang/String;)Lcom/amap/api/maps2d/model/MarkerOptions;
    .locals 0

    .prologue
    .line 157
    iput-object p1, p0, Lcom/amap/api/maps2d/model/MarkerOptions;->c:Ljava/lang/String;

    .line 158
    return-object p0
.end method

.method public visible(Z)Lcom/amap/api/maps2d/model/MarkerOptions;
    .locals 0

    .prologue
    .line 190
    iput-boolean p1, p0, Lcom/amap/api/maps2d/model/MarkerOptions;->h:Z

    .line 191
    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 333
    iget-object v0, p0, Lcom/amap/api/maps2d/model/MarkerOptions;->b:Lcom/amap/api/maps2d/model/LatLng;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 334
    iget-object v0, p0, Lcom/amap/api/maps2d/model/MarkerOptions;->k:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 337
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/MarkerOptions;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 338
    iget-object v0, p0, Lcom/amap/api/maps2d/model/MarkerOptions;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 339
    iget v0, p0, Lcom/amap/api/maps2d/model/MarkerOptions;->e:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 340
    iget v0, p0, Lcom/amap/api/maps2d/model/MarkerOptions;->f:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 341
    iget-boolean v0, p0, Lcom/amap/api/maps2d/model/MarkerOptions;->h:Z

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 342
    iget-boolean v0, p0, Lcom/amap/api/maps2d/model/MarkerOptions;->g:Z

    if-nez v0, :cond_3

    move v0, v1

    :goto_2
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 343
    iget-boolean v0, p0, Lcom/amap/api/maps2d/model/MarkerOptions;->i:Z

    if-nez v0, :cond_4

    :goto_3
    int-to-byte v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 344
    iget-object v0, p0, Lcom/amap/api/maps2d/model/MarkerOptions;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 345
    iget v0, p0, Lcom/amap/api/maps2d/model/MarkerOptions;->j:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 346
    iget-object v0, p0, Lcom/amap/api/maps2d/model/MarkerOptions;->k:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 347
    return-void

    .line 334
    :cond_1
    iget-object v0, p0, Lcom/amap/api/maps2d/model/MarkerOptions;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 335
    iget-object v0, p0, Lcom/amap/api/maps2d/model/MarkerOptions;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto :goto_0

    :cond_2
    move v0, v2

    .line 341
    goto :goto_1

    :cond_3
    move v0, v2

    .line 342
    goto :goto_2

    :cond_4
    move v1, v2

    .line 343
    goto :goto_3
.end method

.method public zIndex(F)Lcom/amap/api/maps2d/model/MarkerOptions;
    .locals 0

    .prologue
    .line 214
    iput p1, p0, Lcom/amap/api/maps2d/model/MarkerOptions;->j:F

    .line 215
    return-object p0
.end method
