.class public Landroid/net/CaptivePortal;
.super Ljava/lang/Object;
.source "CaptivePortal.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final APP_RETURN_DISMISSED:I = 0x0

.field public static final APP_RETURN_UNWANTED:I = 0x1

.field public static final APP_RETURN_WANTED_AS_IS:I = 0x2

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/CaptivePortal;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mBinder:Landroid/os/IBinder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    new-instance v0, Landroid/net/CaptivePortal$1;

    invoke-direct {v0}, Landroid/net/CaptivePortal$1;-><init>()V

    sput-object v0, Landroid/net/CaptivePortal;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Landroid/net/CaptivePortal;->mBinder:Landroid/os/IBinder;

    .line 42
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x0

    return v0
.end method

.method public ignoreNetwork()V
    .locals 2

    .prologue
    .line 88
    :try_start_0
    iget-object v0, p0, Landroid/net/CaptivePortal;->mBinder:Landroid/os/IBinder;

    invoke-static {v0}, Landroid/net/ICaptivePortal$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/ICaptivePortal;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/net/ICaptivePortal;->appResponse(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    :goto_0
    return-void

    .line 89
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public reportCaptivePortalDismissed()V
    .locals 2

    .prologue
    .line 74
    :try_start_0
    iget-object v0, p0, Landroid/net/CaptivePortal;->mBinder:Landroid/os/IBinder;

    invoke-static {v0}, Landroid/net/ICaptivePortal$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/ICaptivePortal;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/net/ICaptivePortal;->appResponse(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    :goto_0
    return-void

    .line 75
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public useNetwork()V
    .locals 2

    .prologue
    .line 104
    :try_start_0
    iget-object v0, p0, Landroid/net/CaptivePortal;->mBinder:Landroid/os/IBinder;

    invoke-static {v0}, Landroid/net/ICaptivePortal$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/ICaptivePortal;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/net/ICaptivePortal;->appResponse(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    :goto_0
    return-void

    .line 105
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 51
    iget-object v0, p0, Landroid/net/CaptivePortal;->mBinder:Landroid/os/IBinder;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 52
    return-void
.end method
