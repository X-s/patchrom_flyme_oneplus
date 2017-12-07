.class public Lcom/android/internal/telephony/PhoneSwitcher$PhoneState;
.super Ljava/lang/Object;
.source "PhoneSwitcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/PhoneSwitcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "PhoneState"
.end annotation


# instance fields
.field public volatile active:Z

.field public lastRequested:J


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 337
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 338
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/PhoneSwitcher$PhoneState;->active:Z

    .line 339
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/telephony/PhoneSwitcher$PhoneState;->lastRequested:J

    .line 337
    return-void
.end method
