.class public Landroid/app/ActivityManager$AppBootMode;
.super Ljava/lang/Object;
.source "ActivityManager.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppBootMode"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/app/ActivityManager$AppBootMode;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public callerPkgNum:I

.field public mode:I

.field public packageName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1883
    new-instance v0, Landroid/app/ActivityManager$AppBootMode$1;

    invoke-direct {v0}, Landroid/app/ActivityManager$AppBootMode$1;-><init>()V

    sput-object v0, Landroid/app/ActivityManager$AppBootMode;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 1900
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1901
    invoke-virtual {p0, p1}, Landroid/app/ActivityManager$AppBootMode;->readFromParcel(Landroid/os/Parcel;)V

    .line 1902
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/app/ActivityManager$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/app/ActivityManager$1;

    .prologue
    .line 1859
    invoke-direct {p0, p1}, Landroid/app/ActivityManager$AppBootMode;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "mode"    # I
    .param p3, "callerPkgNum"    # I

    .prologue
    .line 1894
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1895
    iput-object p1, p0, Landroid/app/ActivityManager$AppBootMode;->packageName:Ljava/lang/String;

    .line 1896
    iput p2, p0, Landroid/app/ActivityManager$AppBootMode;->mode:I

    .line 1897
    iput p3, p0, Landroid/app/ActivityManager$AppBootMode;->callerPkgNum:I

    .line 1898
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 1867
    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 1878
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ActivityManager$AppBootMode;->packageName:Ljava/lang/String;

    .line 1879
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/ActivityManager$AppBootMode;->mode:I

    .line 1880
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/ActivityManager$AppBootMode;->callerPkgNum:I

    .line 1881
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1919
    const-string v0, ""

    invoke-virtual {p0, v0}, Landroid/app/ActivityManager$AppBootMode;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "prefix"    # Ljava/lang/String;

    .prologue
    .line 1905
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1906
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1907
    const-string v1, " packageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1908
    iget-object v1, p0, Landroid/app/ActivityManager$AppBootMode;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1909
    const-string v1, " mode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1910
    iget v1, p0, Landroid/app/ActivityManager$AppBootMode;->mode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1911
    const-string v1, " callerPkgNum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1912
    iget v1, p0, Landroid/app/ActivityManager$AppBootMode;->callerPkgNum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1914
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 1872
    iget-object v0, p0, Landroid/app/ActivityManager$AppBootMode;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1873
    iget v0, p0, Landroid/app/ActivityManager$AppBootMode;->mode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1874
    iget v0, p0, Landroid/app/ActivityManager$AppBootMode;->callerPkgNum:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1875
    return-void
.end method
