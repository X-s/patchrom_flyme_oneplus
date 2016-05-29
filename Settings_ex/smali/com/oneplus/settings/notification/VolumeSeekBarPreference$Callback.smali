.class public interface abstract Lcom/oneplus/settings/notification/VolumeSeekBarPreference$Callback;
.super Ljava/lang/Object;
.source "VolumeSeekBarPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/notification/VolumeSeekBarPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract onSampleStarting(Landroid/preference/SeekBarVolumizer;)V
.end method

.method public abstract onStreamMuted(Z)V
.end method

.method public abstract onStreamValueChanged(II)V
.end method
