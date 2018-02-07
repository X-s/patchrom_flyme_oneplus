.class public Lcom/oneplus/settings/backgroundoptimize/AppControlMode;
.super Ljava/lang/Object;
.source "AppControlMode.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/backgroundoptimize/AppControlMode$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/oneplus/settings/backgroundoptimize/AppControlMode;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mode:I

.field public packageName:Ljava/lang/String;

.field public value:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    new-instance v0, Lcom/oneplus/settings/backgroundoptimize/AppControlMode$1;

    invoke-direct {v0}, Lcom/oneplus/settings/backgroundoptimize/AppControlMode$1;-><init>()V

    sput-object v0, Lcom/oneplus/settings/backgroundoptimize/AppControlMode;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 10
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-virtual {p0, p1}, Lcom/oneplus/settings/backgroundoptimize/AppControlMode;->readFromParcel(Landroid/os/Parcel;)V

    .line 52
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/oneplus/settings/backgroundoptimize/AppControlMode;)V
    .locals 0
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/settings/backgroundoptimize/AppControlMode;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "mode"    # I
    .param p3, "value"    # I

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/oneplus/settings/backgroundoptimize/AppControlMode;->packageName:Ljava/lang/String;

    .line 48
    iput p2, p0, Lcom/oneplus/settings/backgroundoptimize/AppControlMode;->mode:I

    .line 49
    iput p3, p0, Lcom/oneplus/settings/backgroundoptimize/AppControlMode;->value:I

    .line 46
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/backgroundoptimize/AppControlMode;->packageName:Ljava/lang/String;

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oneplus/settings/backgroundoptimize/AppControlMode;->mode:I

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oneplus/settings/backgroundoptimize/AppControlMode;->value:I

    .line 28
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    const-string/jumbo v0, ""

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/backgroundoptimize/AppControlMode;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "prefix"    # Ljava/lang/String;

    .prologue
    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    const-string/jumbo v1, " packageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    iget-object v1, p0, Lcom/oneplus/settings/backgroundoptimize/AppControlMode;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    const-string/jumbo v1, " mode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    iget v1, p0, Lcom/oneplus/settings/backgroundoptimize/AppControlMode;->mode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 63
    const-string/jumbo v1, " value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    iget v1, p0, Lcom/oneplus/settings/backgroundoptimize/AppControlMode;->value:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 66
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 23
    iget-object v0, p0, Lcom/oneplus/settings/backgroundoptimize/AppControlMode;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 24
    iget v0, p0, Lcom/oneplus/settings/backgroundoptimize/AppControlMode;->mode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 25
    iget v0, p0, Lcom/oneplus/settings/backgroundoptimize/AppControlMode;->value:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 22
    return-void
.end method
