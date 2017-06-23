.class public final Landroid/view/Display$ColorTransform;
.super Ljava/lang/Object;
.source "Display.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/Display;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ColorTransform"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/view/Display$ColorTransform;",
            ">;"
        }
    .end annotation
.end field

.field public static final EMPTY_ARRAY:[Landroid/view/Display$ColorTransform;


# instance fields
.field private final mColorTransform:I

.field private final mId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1113
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/view/Display$ColorTransform;

    sput-object v0, Landroid/view/Display$ColorTransform;->EMPTY_ARRAY:[Landroid/view/Display$ColorTransform;

    .line 1177
    new-instance v0, Landroid/view/Display$ColorTransform$1;

    invoke-direct {v0}, Landroid/view/Display$ColorTransform$1;-><init>()V

    sput-object v0, Landroid/view/Display$ColorTransform;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "colorTransform"    # I

    .prologue
    .line 1118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1119
    iput p1, p0, Landroid/view/Display$ColorTransform;->mId:I

    .line 1120
    iput p2, p0, Landroid/view/Display$ColorTransform;->mColorTransform:I

    .line 1121
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 1167
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-direct {p0, v0, v1}, Landroid/view/Display$ColorTransform;-><init>(II)V

    .line 1168
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/view/Display$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/view/Display$1;

    .prologue
    .line 1112
    invoke-direct {p0, p1}, Landroid/view/Display$ColorTransform;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 1163
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1133
    if-ne p0, p1, :cond_1

    .line 1140
    :cond_0
    :goto_0
    return v1

    .line 1136
    :cond_1
    instance-of v3, p1, Landroid/view/Display$ColorTransform;

    if-nez v3, :cond_2

    move v1, v2

    .line 1137
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 1139
    check-cast v0, Landroid/view/Display$ColorTransform;

    .line 1140
    .local v0, "that":Landroid/view/Display$ColorTransform;
    iget v3, p0, Landroid/view/Display$ColorTransform;->mId:I

    iget v4, v0, Landroid/view/Display$ColorTransform;->mId:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Landroid/view/Display$ColorTransform;->mColorTransform:I

    iget v4, v0, Landroid/view/Display$ColorTransform;->mColorTransform:I

    if-eq v3, v4, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public getColorTransform()I
    .locals 1

    .prologue
    .line 1128
    iget v0, p0, Landroid/view/Display$ColorTransform;->mColorTransform:I

    return v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 1124
    iget v0, p0, Landroid/view/Display$ColorTransform;->mId:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 1146
    const/4 v0, 0x1

    .line 1147
    .local v0, "hash":I
    iget v1, p0, Landroid/view/Display$ColorTransform;->mId:I

    add-int/lit8 v0, v1, 0x11

    .line 1148
    mul-int/lit8 v1, v0, 0x11

    iget v2, p0, Landroid/view/Display$ColorTransform;->mColorTransform:I

    add-int v0, v1, v2

    .line 1149
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1154
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/Display$ColorTransform;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", colorTransform="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/Display$ColorTransform;->mColorTransform:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "parcelableFlags"    # I

    .prologue
    .line 1172
    iget v0, p0, Landroid/view/Display$ColorTransform;->mId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1173
    iget v0, p0, Landroid/view/Display$ColorTransform;->mColorTransform:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1174
    return-void
.end method
