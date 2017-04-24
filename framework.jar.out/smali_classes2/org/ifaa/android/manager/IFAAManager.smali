.class public abstract Lorg/ifaa/android/manager/IFAAManager;
.super Ljava/lang/Object;
.source "IFAAManager.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-string v0, "teeclientjni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getDeviceModel()Ljava/lang/String;
.end method

.method public abstract getSupportBIOTypes(Landroid/content/Context;)I
.end method

.method public abstract getVersion()I
.end method

.method public native processCmd(Landroid/content/Context;[B)[B
.end method

.method public abstract startBIOManager(Landroid/content/Context;I)I
.end method
