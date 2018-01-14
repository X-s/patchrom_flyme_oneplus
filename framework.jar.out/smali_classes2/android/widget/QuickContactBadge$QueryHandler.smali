.class Landroid/widget/QuickContactBadge$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "QuickContactBadge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/QuickContactBadge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/QuickContactBadge;


# direct methods
.method public constructor <init>(Landroid/widget/QuickContactBadge;Landroid/content/ContentResolver;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/QuickContactBadge;
    .param p2, "cr"    # Landroid/content/ContentResolver;

    .prologue
    .line 339
    iput-object p1, p0, Landroid/widget/QuickContactBadge$QueryHandler;->this$0:Landroid/widget/QuickContactBadge;

    .line 340
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 339
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 16
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 345
    const/4 v9, 0x0

    .line 346
    .local v9, "lookupUri":Landroid/net/Uri;
    const/4 v4, 0x0

    .line 347
    .local v4, "createUri":Landroid/net/Uri;
    const/4 v10, 0x0

    .line 348
    .local v10, "trigger":Z
    if-eqz p2, :cond_3

    move-object/from16 v6, p2

    check-cast v6, Landroid/os/Bundle;

    .line 350
    .local v6, "extras":Landroid/os/Bundle;
    :goto_0
    packed-switch p1, :pswitch_data_0

    .line 382
    .end local v4    # "createUri":Landroid/net/Uri;
    .end local v9    # "lookupUri":Landroid/net/Uri;
    :cond_0
    :goto_1
    if-eqz p3, :cond_1

    .line 383
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    .line 387
    :cond_1
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/widget/QuickContactBadge$QueryHandler;->this$0:Landroid/widget/QuickContactBadge;

    invoke-static {v11, v9}, Landroid/widget/QuickContactBadge;->-set0(Landroid/widget/QuickContactBadge;Landroid/net/Uri;)Landroid/net/Uri;

    .line 388
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/widget/QuickContactBadge$QueryHandler;->this$0:Landroid/widget/QuickContactBadge;

    invoke-static {v11}, Landroid/widget/QuickContactBadge;->-wrap0(Landroid/widget/QuickContactBadge;)V

    .line 390
    if-eqz v10, :cond_6

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/widget/QuickContactBadge$QueryHandler;->this$0:Landroid/widget/QuickContactBadge;

    invoke-static {v11}, Landroid/widget/QuickContactBadge;->-get0(Landroid/widget/QuickContactBadge;)Landroid/net/Uri;

    move-result-object v11

    if-eqz v11, :cond_6

    .line 392
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/widget/QuickContactBadge$QueryHandler;->this$0:Landroid/widget/QuickContactBadge;

    invoke-virtual {v11}, Landroid/widget/QuickContactBadge;->getContext()Landroid/content/Context;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/QuickContactBadge$QueryHandler;->this$0:Landroid/widget/QuickContactBadge;

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/QuickContactBadge$QueryHandler;->this$0:Landroid/widget/QuickContactBadge;

    invoke-static {v13}, Landroid/widget/QuickContactBadge;->-get0(Landroid/widget/QuickContactBadge;)Landroid/net/Uri;

    move-result-object v13

    .line 393
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/QuickContactBadge$QueryHandler;->this$0:Landroid/widget/QuickContactBadge;

    iget-object v14, v14, Landroid/widget/QuickContactBadge;->mExcludeMimes:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/QuickContactBadge$QueryHandler;->this$0:Landroid/widget/QuickContactBadge;

    invoke-static {v15}, Landroid/widget/QuickContactBadge;->-get1(Landroid/widget/QuickContactBadge;)Ljava/lang/String;

    move-result-object v15

    .line 392
    invoke-static {v11, v12, v13, v14, v15}, Landroid/provider/ContactsContract$QuickContact;->showQuickContact(Landroid/content/Context;Landroid/view/View;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    :cond_2
    :goto_2
    return-void

    .line 348
    .end local v6    # "extras":Landroid/os/Bundle;
    .restart local v4    # "createUri":Landroid/net/Uri;
    .restart local v9    # "lookupUri":Landroid/net/Uri;
    :cond_3
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .restart local v6    # "extras":Landroid/os/Bundle;
    goto :goto_0

    .line 352
    :pswitch_0
    const/4 v10, 0x1

    .line 353
    :try_start_0
    const-string/jumbo v11, "uri_content"

    invoke-virtual {v6, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 354
    .local v5, "extraUriContent":Ljava/lang/String;
    if-nez v5, :cond_4

    const/4 v4, 0x0

    .line 358
    .end local v4    # "createUri":Landroid/net/Uri;
    .end local v5    # "extraUriContent":Ljava/lang/String;
    :goto_3
    :pswitch_1
    if-eqz p3, :cond_0

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 359
    const/4 v11, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 360
    .local v2, "contactId":J
    const/4 v11, 0x1

    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 361
    .local v8, "lookupKey":Ljava/lang/String;
    invoke-static {v2, v3, v8}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .local v9, "lookupUri":Landroid/net/Uri;
    goto :goto_1

    .line 354
    .end local v2    # "contactId":J
    .end local v8    # "lookupKey":Ljava/lang/String;
    .restart local v4    # "createUri":Landroid/net/Uri;
    .restart local v5    # "extraUriContent":Ljava/lang/String;
    .local v9, "lookupUri":Landroid/net/Uri;
    :cond_4
    const-string/jumbo v11, "tel"

    const/4 v12, 0x0

    invoke-static {v11, v5, v12}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .local v4, "createUri":Landroid/net/Uri;
    goto :goto_3

    .line 367
    .end local v5    # "extraUriContent":Ljava/lang/String;
    .local v4, "createUri":Landroid/net/Uri;
    :pswitch_2
    const/4 v10, 0x1

    .line 368
    const-string/jumbo v11, "mailto"

    .line 369
    const-string/jumbo v12, "uri_content"

    invoke-virtual {v6, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    .line 368
    invoke-static {v11, v12, v13}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 373
    .end local v4    # "createUri":Landroid/net/Uri;
    :pswitch_3
    if-eqz p3, :cond_0

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 374
    const/4 v11, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 375
    .restart local v2    # "contactId":J
    const/4 v11, 0x1

    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 376
    .restart local v8    # "lookupKey":Ljava/lang/String;
    invoke-static {v2, v3, v8}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    .local v9, "lookupUri":Landroid/net/Uri;
    goto/16 :goto_1

    .line 381
    .end local v2    # "contactId":J
    .end local v8    # "lookupKey":Ljava/lang/String;
    .local v9, "lookupUri":Landroid/net/Uri;
    :catchall_0
    move-exception v11

    .line 382
    if-eqz p3, :cond_5

    .line 383
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    .line 381
    :cond_5
    throw v11

    .line 394
    .end local v9    # "lookupUri":Landroid/net/Uri;
    :cond_6
    if-eqz v4, :cond_2

    .line 396
    new-instance v7, Landroid/content/Intent;

    const-string/jumbo v11, "com.android.contacts.action.SHOW_OR_CREATE_CONTACT"

    invoke-direct {v7, v11, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 397
    .local v7, "intent":Landroid/content/Intent;
    if-eqz v6, :cond_7

    .line 398
    const-string/jumbo v11, "uri_content"

    invoke-virtual {v6, v11}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 399
    invoke-virtual {v7, v6}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 401
    :cond_7
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/widget/QuickContactBadge$QueryHandler;->this$0:Landroid/widget/QuickContactBadge;

    invoke-virtual {v11}, Landroid/widget/QuickContactBadge;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11, v7}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 350
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
