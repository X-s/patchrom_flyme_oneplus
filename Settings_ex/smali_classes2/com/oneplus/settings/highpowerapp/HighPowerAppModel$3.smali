.class Lcom/oneplus/settings/highpowerapp/HighPowerAppModel$3;
.super Ljava/lang/Object;
.source "HighPowerAppModel.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;->process()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/oneplus/settings/highpowerapp/HighPowerApp;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/oneplus/settings/highpowerapp/HighPowerAppModel$3;->this$0:Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/oneplus/settings/highpowerapp/HighPowerApp;Lcom/oneplus/settings/highpowerapp/HighPowerApp;)I
    .locals 2
    .param p1, "o1"    # Lcom/oneplus/settings/highpowerapp/HighPowerApp;
    .param p2, "o2"    # Lcom/oneplus/settings/highpowerapp/HighPowerApp;

    .prologue
    .line 91
    iget-object v0, p1, Lcom/oneplus/settings/highpowerapp/HighPowerApp;->pkgName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-object v1, p2, Lcom/oneplus/settings/highpowerapp/HighPowerApp;->pkgName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "o1"    # Ljava/lang/Object;
    .param p2, "o2"    # Ljava/lang/Object;

    .prologue
    .line 90
    check-cast p1, Lcom/oneplus/settings/highpowerapp/HighPowerApp;

    .end local p1    # "o1":Ljava/lang/Object;
    check-cast p2, Lcom/oneplus/settings/highpowerapp/HighPowerApp;

    .end local p2    # "o2":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/settings/highpowerapp/HighPowerAppModel$3;->compare(Lcom/oneplus/settings/highpowerapp/HighPowerApp;Lcom/oneplus/settings/highpowerapp/HighPowerApp;)I

    move-result v0

    return v0
.end method
