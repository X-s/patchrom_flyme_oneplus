.class Lcom/android/internal/telephony/cdma/CountryMonitor$1;
.super Ljava/lang/Object;
.source "CountryMonitor.java"

# interfaces
.implements Landroid/location/CountryListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/cdma/CountryMonitor;->getCountryIso()Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/cdma/CountryMonitor;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cdma/CountryMonitor;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/CountryMonitor$1;->this$0:Lcom/android/internal/telephony/cdma/CountryMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCountryDetected(Landroid/location/Country;)V
    .locals 2
    .param p1, "country"    # Landroid/location/Country;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CountryMonitor$1;->this$0:Lcom/android/internal/telephony/cdma/CountryMonitor;

    invoke-virtual {p1}, Landroid/location/Country;->getCountryIso()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/android/internal/telephony/cdma/CountryMonitor;->mCurrentCountryIso:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/CountryMonitor;->access$002(Lcom/android/internal/telephony/cdma/CountryMonitor;Ljava/lang/String;)Ljava/lang/String;

    .line 63
    return-void
.end method
