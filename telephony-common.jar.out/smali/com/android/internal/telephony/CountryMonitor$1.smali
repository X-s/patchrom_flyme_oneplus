.class Lcom/android/internal/telephony/CountryMonitor$1;
.super Ljava/lang/Object;
.source "CountryMonitor.java"

# interfaces
.implements Landroid/location/CountryListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/CountryMonitor;->getCountryIso()Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/CountryMonitor;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/CountryMonitor;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/CountryMonitor;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/android/internal/telephony/CountryMonitor$1;->this$0:Lcom/android/internal/telephony/CountryMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCountryDetected(Landroid/location/Country;)V
    .locals 2
    .param p1, "country"    # Landroid/location/Country;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/internal/telephony/CountryMonitor$1;->this$0:Lcom/android/internal/telephony/CountryMonitor;

    invoke-virtual {p1}, Landroid/location/Country;->getCountryIso()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/CountryMonitor;->-set0(Lcom/android/internal/telephony/CountryMonitor;Ljava/lang/String;)Ljava/lang/String;

    .line 61
    return-void
.end method
