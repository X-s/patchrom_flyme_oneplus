.class public Landroid/util/GlobalPermissionState;
.super Ljava/lang/Object;
.source "GlobalPermissionState.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/util/GlobalPermissionState$1;,
        Landroid/util/GlobalPermissionState$PackagePermissionState;,
        Landroid/util/GlobalPermissionState$PermissionState;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/util/GlobalPermissionState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final mPkgToPermMap:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/util/GlobalPermissionState$PackagePermissionState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    new-instance v0, Landroid/util/GlobalPermissionState$1;

    invoke-direct {v0}, Landroid/util/GlobalPermissionState$1;-><init>()V

    sput-object v0, Landroid/util/GlobalPermissionState;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 11
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Landroid/util/GlobalPermissionState;->mPkgToPermMap:Ljava/util/LinkedHashMap;

    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Landroid/util/GlobalPermissionState;->mPkgToPermMap:Ljava/util/LinkedHashMap;

    .line 28
    invoke-virtual {p0, p1}, Landroid/util/GlobalPermissionState;->readFromParcel(Landroid/os/Parcel;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/util/GlobalPermissionState;)V
    .locals 5
    .param p1, "gps"    # Landroid/util/GlobalPermissionState;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v3, p0, Landroid/util/GlobalPermissionState;->mPkgToPermMap:Ljava/util/LinkedHashMap;

    .line 21
    iget-object v3, p1, Landroid/util/GlobalPermissionState;->mPkgToPermMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "_pps$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/GlobalPermissionState$PackagePermissionState;

    .line 22
    .local v0, "_pps":Landroid/util/GlobalPermissionState$PackagePermissionState;
    new-instance v2, Landroid/util/GlobalPermissionState$PackagePermissionState;

    invoke-direct {v2, v0}, Landroid/util/GlobalPermissionState$PackagePermissionState;-><init>(Landroid/util/GlobalPermissionState$PackagePermissionState;)V

    .line 23
    .local v2, "pps":Landroid/util/GlobalPermissionState$PackagePermissionState;
    iget-object v3, p0, Landroid/util/GlobalPermissionState;->mPkgToPermMap:Ljava/util/LinkedHashMap;

    iget-object v4, v0, Landroid/util/GlobalPermissionState$PackagePermissionState;->mPkgName:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 20
    .end local v0    # "_pps":Landroid/util/GlobalPermissionState$PackagePermissionState;
    .end local v2    # "pps":Landroid/util/GlobalPermissionState$PackagePermissionState;
    :cond_0
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 40
    iget-object v0, p0, Landroid/util/GlobalPermissionState;->mPkgToPermMap:Ljava/util/LinkedHashMap;

    const-class v1, Landroid/util/GlobalPermissionState$PackagePermissionState;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readMap(Ljava/util/Map;Ljava/lang/ClassLoader;)V

    .line 39
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 36
    iget-object v0, p0, Landroid/util/GlobalPermissionState;->mPkgToPermMap:Ljava/util/LinkedHashMap;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 35
    return-void
.end method
