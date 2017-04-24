.class public final Landroid/hardware/input/KeyboardLayout;
.super Ljava/lang/Object;
.source "KeyboardLayout.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Ljava/lang/Comparable",
        "<",
        "Landroid/hardware/input/KeyboardLayout;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/hardware/input/KeyboardLayout;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mCollection:Ljava/lang/String;

.field private final mDescriptor:Ljava/lang/String;

.field private final mLabel:Ljava/lang/String;

.field private final mLocales:[Ljava/util/Locale;

.field private final mPriority:I

.field private final mProductId:I

.field private final mVendorId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    new-instance v0, Landroid/hardware/input/KeyboardLayout$1;

    invoke-direct {v0}, Landroid/hardware/input/KeyboardLayout$1;-><init>()V

    sput-object v0, Landroid/hardware/input/KeyboardLayout;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/hardware/input/KeyboardLayout;->mDescriptor:Ljava/lang/String;

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/hardware/input/KeyboardLayout;->mLabel:Ljava/lang/String;

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/hardware/input/KeyboardLayout;->mCollection:Ljava/lang/String;

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/input/KeyboardLayout;->mPriority:I

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 70
    .local v0, "N":I
    new-array v2, v0, [Ljava/util/Locale;

    iput-object v2, p0, Landroid/hardware/input/KeyboardLayout;->mLocales:[Ljava/util/Locale;

    .line 71
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 72
    iget-object v2, p0, Landroid/hardware/input/KeyboardLayout;->mLocales:[Ljava/util/Locale;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v3

    aput-object v3, v2, v1

    .line 71
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 74
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/input/KeyboardLayout;->mVendorId:I

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/input/KeyboardLayout;->mProductId:I

    .line 76
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/hardware/input/KeyboardLayout$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/hardware/input/KeyboardLayout$1;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Landroid/hardware/input/KeyboardLayout;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Ljava/util/Locale;II)V
    .locals 1
    .param p1, "descriptor"    # Ljava/lang/String;
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "collection"    # Ljava/lang/String;
    .param p4, "priority"    # I
    .param p5, "locales"    # [Ljava/util/Locale;
    .param p6, "vid"    # I
    .param p7, "pid"    # I

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Landroid/hardware/input/KeyboardLayout;->mDescriptor:Ljava/lang/String;

    .line 52
    iput-object p2, p0, Landroid/hardware/input/KeyboardLayout;->mLabel:Ljava/lang/String;

    .line 53
    iput-object p3, p0, Landroid/hardware/input/KeyboardLayout;->mCollection:Ljava/lang/String;

    .line 54
    iput p4, p0, Landroid/hardware/input/KeyboardLayout;->mPriority:I

    .line 55
    if-eqz p5, :cond_0

    .line 56
    iput-object p5, p0, Landroid/hardware/input/KeyboardLayout;->mLocales:[Ljava/util/Locale;

    .line 60
    :goto_0
    iput p6, p0, Landroid/hardware/input/KeyboardLayout;->mVendorId:I

    .line 61
    iput p7, p0, Landroid/hardware/input/KeyboardLayout;->mProductId:I

    .line 62
    return-void

    .line 58
    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/util/Locale;

    iput-object v0, p0, Landroid/hardware/input/KeyboardLayout;->mLocales:[Ljava/util/Locale;

    goto :goto_0
.end method


# virtual methods
.method public compareTo(Landroid/hardware/input/KeyboardLayout;)I
    .locals 3
    .param p1, "another"    # Landroid/hardware/input/KeyboardLayout;

    .prologue
    .line 160
    iget v1, p1, Landroid/hardware/input/KeyboardLayout;->mPriority:I

    iget v2, p0, Landroid/hardware/input/KeyboardLayout;->mPriority:I

    invoke-static {v1, v2}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    .line 161
    .local v0, "result":I
    if-nez v0, :cond_0

    .line 162
    iget-object v1, p0, Landroid/hardware/input/KeyboardLayout;->mLabel:Ljava/lang/String;

    iget-object v2, p1, Landroid/hardware/input/KeyboardLayout;->mLabel:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    .line 164
    :cond_0
    if-nez v0, :cond_1

    .line 165
    iget-object v1, p0, Landroid/hardware/input/KeyboardLayout;->mCollection:Ljava/lang/String;

    iget-object v2, p1, Landroid/hardware/input/KeyboardLayout;->mCollection:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    .line 167
    :cond_1
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 29
    check-cast p1, Landroid/hardware/input/KeyboardLayout;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/hardware/input/KeyboardLayout;->compareTo(Landroid/hardware/input/KeyboardLayout;)I

    move-result v0

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 135
    const/4 v0, 0x0

    return v0
.end method

.method public getCollection()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Landroid/hardware/input/KeyboardLayout;->mCollection:Ljava/lang/String;

    return-object v0
.end method

.method public getDescriptor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Landroid/hardware/input/KeyboardLayout;->mDescriptor:Ljava/lang/String;

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Landroid/hardware/input/KeyboardLayout;->mLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getLocales()[Ljava/util/Locale;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Landroid/hardware/input/KeyboardLayout;->mLocales:[Ljava/util/Locale;

    return-object v0
.end method

.method public getProductId()I
    .locals 1

    .prologue
    .line 130
    iget v0, p0, Landroid/hardware/input/KeyboardLayout;->mProductId:I

    return v0
.end method

.method public getVendorId()I
    .locals 1

    .prologue
    .line 121
    iget v0, p0, Landroid/hardware/input/KeyboardLayout;->mVendorId:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 172
    iget-object v0, p0, Landroid/hardware/input/KeyboardLayout;->mCollection:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Landroid/hardware/input/KeyboardLayout;->mLabel:Ljava/lang/String;

    .line 175
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/hardware/input/KeyboardLayout;->mLabel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/input/KeyboardLayout;->mCollection:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 140
    iget-object v4, p0, Landroid/hardware/input/KeyboardLayout;->mDescriptor:Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 141
    iget-object v4, p0, Landroid/hardware/input/KeyboardLayout;->mLabel:Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 142
    iget-object v4, p0, Landroid/hardware/input/KeyboardLayout;->mCollection:Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 143
    iget v4, p0, Landroid/hardware/input/KeyboardLayout;->mPriority:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 144
    iget-object v4, p0, Landroid/hardware/input/KeyboardLayout;->mLocales:[Ljava/util/Locale;

    if-eqz v4, :cond_0

    .line 145
    iget-object v4, p0, Landroid/hardware/input/KeyboardLayout;->mLocales:[Ljava/util/Locale;

    array-length v4, v4

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 146
    iget-object v0, p0, Landroid/hardware/input/KeyboardLayout;->mLocales:[Ljava/util/Locale;

    .local v0, "arr$":[Ljava/util/Locale;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v2, v0, v1

    .line 147
    .local v2, "l":Ljava/util/Locale;
    invoke-virtual {v2}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 146
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 150
    .end local v0    # "arr$":[Ljava/util/Locale;
    .end local v1    # "i$":I
    .end local v2    # "l":Ljava/util/Locale;
    .end local v3    # "len$":I
    :cond_0
    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 152
    :cond_1
    iget v4, p0, Landroid/hardware/input/KeyboardLayout;->mVendorId:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 153
    iget v4, p0, Landroid/hardware/input/KeyboardLayout;->mProductId:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 154
    return-void
.end method
