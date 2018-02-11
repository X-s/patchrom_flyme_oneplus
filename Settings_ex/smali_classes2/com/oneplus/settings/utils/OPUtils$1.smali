.class final Lcom/oneplus/settings/utils/OPUtils$1;
.super Ljava/lang/Object;
.source "OPUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/utils/OPUtils;->replaceZhCnToZhCnHANS(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "val$context"    # Landroid/content/Context;

    .prologue
    .line 551
    iput-object p1, p0, Lcom/oneplus/settings/utils/OPUtils$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 555
    iget-object v6, p0, Lcom/oneplus/settings/utils/OPUtils$1;->val$context:Landroid/content/Context;

    invoke-static {v6}, Lcom/oneplus/settings/utils/OPUtils;->-wrap0(Landroid/content/Context;)Ljava/util/List;

    move-result-object v4

    .line 556
    .local v4, "localeList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/LocaleStore$LocaleInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    .line 557
    .local v0, "count":I
    new-array v5, v0, [Ljava/util/Locale;

    .line 558
    .local v5, "newList":[Ljava/util/Locale;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 559
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    .line 560
    .local v2, "li":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    invoke-virtual {v2}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v6

    aput-object v6, v5, v1

    .line 558
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 562
    .end local v2    # "li":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    :cond_0
    new-instance v3, Landroid/os/LocaleList;

    invoke-direct {v3, v5}, Landroid/os/LocaleList;-><init>([Ljava/util/Locale;)V

    .line 563
    .local v3, "ll":Landroid/os/LocaleList;
    invoke-static {v3}, Landroid/os/LocaleList;->setDefault(Landroid/os/LocaleList;)V

    .line 564
    invoke-static {v3}, Lcom/android/internal/app/LocalePicker;->updateLocales(Landroid/os/LocaleList;)V

    .line 553
    return-void
.end method
