
kMain.o:     file format elf32-i386


Disassembly of section .text:

00100000 <inLong>:
  100000:	55                   	push   %ebp
  100001:	89 e5                	mov    %esp,%ebp
  100003:	83 ec 14             	sub    $0x14,%esp
  100006:	e8 3a 04 00 00       	call   100445 <__x86.get_pc_thunk.ax>
  10000b:	05 f5 5f 00 00       	add    $0x5ff5,%eax
  100010:	8b 45 08             	mov    0x8(%ebp),%eax
  100013:	66 89 45 ec          	mov    %ax,-0x14(%ebp)
  100017:	8b 45 ec             	mov    -0x14(%ebp),%eax
  10001a:	89 c2                	mov    %eax,%edx
  10001c:	ed                   	in     (%dx),%eax
  10001d:	89 45 fc             	mov    %eax,-0x4(%ebp)
  100020:	8b 45 fc             	mov    -0x4(%ebp),%eax
  100023:	c9                   	leave  
  100024:	c3                   	ret    

00100025 <outLong>:
  100025:	55                   	push   %ebp
  100026:	89 e5                	mov    %esp,%ebp
  100028:	83 ec 04             	sub    $0x4,%esp
  10002b:	e8 15 04 00 00       	call   100445 <__x86.get_pc_thunk.ax>
  100030:	05 d0 5f 00 00       	add    $0x5fd0,%eax
  100035:	8b 45 08             	mov    0x8(%ebp),%eax
  100038:	66 89 45 fc          	mov    %ax,-0x4(%ebp)
  10003c:	8b 45 0c             	mov    0xc(%ebp),%eax
  10003f:	8b 55 fc             	mov    -0x4(%ebp),%edx
  100042:	ef                   	out    %eax,(%dx)
  100043:	90                   	nop
  100044:	c9                   	leave  
  100045:	c3                   	ret    

00100046 <inByte>:
  100046:	55                   	push   %ebp
  100047:	89 e5                	mov    %esp,%ebp
  100049:	83 ec 14             	sub    $0x14,%esp
  10004c:	e8 f4 03 00 00       	call   100445 <__x86.get_pc_thunk.ax>
  100051:	05 af 5f 00 00       	add    $0x5faf,%eax
  100056:	8b 45 08             	mov    0x8(%ebp),%eax
  100059:	66 89 45 ec          	mov    %ax,-0x14(%ebp)
  10005d:	8b 45 ec             	mov    -0x14(%ebp),%eax
  100060:	89 c2                	mov    %eax,%edx
  100062:	ec                   	in     (%dx),%al
  100063:	88 45 ff             	mov    %al,-0x1(%ebp)
  100066:	8a 45 ff             	mov    -0x1(%ebp),%al
  100069:	c9                   	leave  
  10006a:	c3                   	ret    

0010006b <outByte>:
  10006b:	55                   	push   %ebp
  10006c:	89 e5                	mov    %esp,%ebp
  10006e:	83 ec 08             	sub    $0x8,%esp
  100071:	e8 cf 03 00 00       	call   100445 <__x86.get_pc_thunk.ax>
  100076:	05 8a 5f 00 00       	add    $0x5f8a,%eax
  10007b:	8b 45 08             	mov    0x8(%ebp),%eax
  10007e:	8b 55 0c             	mov    0xc(%ebp),%edx
  100081:	66 89 45 fc          	mov    %ax,-0x4(%ebp)
  100085:	88 d0                	mov    %dl,%al
  100087:	88 45 f8             	mov    %al,-0x8(%ebp)
  10008a:	8a 45 f8             	mov    -0x8(%ebp),%al
  10008d:	8b 55 fc             	mov    -0x4(%ebp),%edx
  100090:	ee                   	out    %al,(%dx)
  100091:	90                   	nop
  100092:	c9                   	leave  
  100093:	c3                   	ret    

00100094 <waitDisk>:
  100094:	55                   	push   %ebp
  100095:	89 e5                	mov    %esp,%ebp
  100097:	e8 a9 03 00 00       	call   100445 <__x86.get_pc_thunk.ax>
  10009c:	05 64 5f 00 00       	add    $0x5f64,%eax
  1000a1:	90                   	nop
  1000a2:	68 f7 01 00 00       	push   $0x1f7
  1000a7:	e8 9a ff ff ff       	call   100046 <inByte>
  1000ac:	83 c4 04             	add    $0x4,%esp
  1000af:	0f b6 c0             	movzbl %al,%eax
  1000b2:	25 c0 00 00 00       	and    $0xc0,%eax
  1000b7:	83 f8 40             	cmp    $0x40,%eax
  1000ba:	75 e6                	jne    1000a2 <waitDisk+0xe>
  1000bc:	90                   	nop
  1000bd:	c9                   	leave  
  1000be:	c3                   	ret    

001000bf <readSect>:
  1000bf:	55                   	push   %ebp
  1000c0:	89 e5                	mov    %esp,%ebp
  1000c2:	53                   	push   %ebx
  1000c3:	83 ec 10             	sub    $0x10,%esp
  1000c6:	e8 7a 03 00 00       	call   100445 <__x86.get_pc_thunk.ax>
  1000cb:	05 35 5f 00 00       	add    $0x5f35,%eax
  1000d0:	e8 bf ff ff ff       	call   100094 <waitDisk>
  1000d5:	6a 01                	push   $0x1
  1000d7:	68 f2 01 00 00       	push   $0x1f2
  1000dc:	e8 8a ff ff ff       	call   10006b <outByte>
  1000e1:	83 c4 08             	add    $0x8,%esp
  1000e4:	8b 45 0c             	mov    0xc(%ebp),%eax
  1000e7:	0f be c0             	movsbl %al,%eax
  1000ea:	50                   	push   %eax
  1000eb:	68 f3 01 00 00       	push   $0x1f3
  1000f0:	e8 76 ff ff ff       	call   10006b <outByte>
  1000f5:	83 c4 08             	add    $0x8,%esp
  1000f8:	8b 45 0c             	mov    0xc(%ebp),%eax
  1000fb:	c1 f8 08             	sar    $0x8,%eax
  1000fe:	0f be c0             	movsbl %al,%eax
  100101:	50                   	push   %eax
  100102:	68 f4 01 00 00       	push   $0x1f4
  100107:	e8 5f ff ff ff       	call   10006b <outByte>
  10010c:	83 c4 08             	add    $0x8,%esp
  10010f:	8b 45 0c             	mov    0xc(%ebp),%eax
  100112:	c1 f8 10             	sar    $0x10,%eax
  100115:	0f be c0             	movsbl %al,%eax
  100118:	50                   	push   %eax
  100119:	68 f5 01 00 00       	push   $0x1f5
  10011e:	e8 48 ff ff ff       	call   10006b <outByte>
  100123:	83 c4 08             	add    $0x8,%esp
  100126:	8b 45 0c             	mov    0xc(%ebp),%eax
  100129:	c1 f8 18             	sar    $0x18,%eax
  10012c:	83 c8 e0             	or     $0xffffffe0,%eax
  10012f:	0f be c0             	movsbl %al,%eax
  100132:	50                   	push   %eax
  100133:	68 f6 01 00 00       	push   $0x1f6
  100138:	e8 2e ff ff ff       	call   10006b <outByte>
  10013d:	83 c4 08             	add    $0x8,%esp
  100140:	6a 20                	push   $0x20
  100142:	68 f7 01 00 00       	push   $0x1f7
  100147:	e8 1f ff ff ff       	call   10006b <outByte>
  10014c:	83 c4 08             	add    $0x8,%esp
  10014f:	e8 40 ff ff ff       	call   100094 <waitDisk>
  100154:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
  10015b:	eb 22                	jmp    10017f <readSect+0xc0>
  10015d:	8b 45 f8             	mov    -0x8(%ebp),%eax
  100160:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
  100167:	8b 45 08             	mov    0x8(%ebp),%eax
  10016a:	8d 1c 02             	lea    (%edx,%eax,1),%ebx
  10016d:	68 f0 01 00 00       	push   $0x1f0
  100172:	e8 89 fe ff ff       	call   100000 <inLong>
  100177:	83 c4 04             	add    $0x4,%esp
  10017a:	89 03                	mov    %eax,(%ebx)
  10017c:	ff 45 f8             	incl   -0x8(%ebp)
  10017f:	83 7d f8 7f          	cmpl   $0x7f,-0x8(%ebp)
  100183:	7e d8                	jle    10015d <readSect+0x9e>
  100185:	90                   	nop
  100186:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  100189:	c9                   	leave  
  10018a:	c3                   	ret    

0010018b <writeSect>:
  10018b:	55                   	push   %ebp
  10018c:	89 e5                	mov    %esp,%ebp
  10018e:	83 ec 10             	sub    $0x10,%esp
  100191:	e8 af 02 00 00       	call   100445 <__x86.get_pc_thunk.ax>
  100196:	05 6a 5e 00 00       	add    $0x5e6a,%eax
  10019b:	e8 f4 fe ff ff       	call   100094 <waitDisk>
  1001a0:	6a 01                	push   $0x1
  1001a2:	68 f2 01 00 00       	push   $0x1f2
  1001a7:	e8 bf fe ff ff       	call   10006b <outByte>
  1001ac:	83 c4 08             	add    $0x8,%esp
  1001af:	8b 45 0c             	mov    0xc(%ebp),%eax
  1001b2:	0f be c0             	movsbl %al,%eax
  1001b5:	50                   	push   %eax
  1001b6:	68 f3 01 00 00       	push   $0x1f3
  1001bb:	e8 ab fe ff ff       	call   10006b <outByte>
  1001c0:	83 c4 08             	add    $0x8,%esp
  1001c3:	8b 45 0c             	mov    0xc(%ebp),%eax
  1001c6:	c1 f8 08             	sar    $0x8,%eax
  1001c9:	0f be c0             	movsbl %al,%eax
  1001cc:	50                   	push   %eax
  1001cd:	68 f4 01 00 00       	push   $0x1f4
  1001d2:	e8 94 fe ff ff       	call   10006b <outByte>
  1001d7:	83 c4 08             	add    $0x8,%esp
  1001da:	8b 45 0c             	mov    0xc(%ebp),%eax
  1001dd:	c1 f8 10             	sar    $0x10,%eax
  1001e0:	0f be c0             	movsbl %al,%eax
  1001e3:	50                   	push   %eax
  1001e4:	68 f5 01 00 00       	push   $0x1f5
  1001e9:	e8 7d fe ff ff       	call   10006b <outByte>
  1001ee:	83 c4 08             	add    $0x8,%esp
  1001f1:	8b 45 0c             	mov    0xc(%ebp),%eax
  1001f4:	c1 f8 18             	sar    $0x18,%eax
  1001f7:	83 c8 e0             	or     $0xffffffe0,%eax
  1001fa:	0f be c0             	movsbl %al,%eax
  1001fd:	50                   	push   %eax
  1001fe:	68 f6 01 00 00       	push   $0x1f6
  100203:	e8 63 fe ff ff       	call   10006b <outByte>
  100208:	83 c4 08             	add    $0x8,%esp
  10020b:	6a 30                	push   $0x30
  10020d:	68 f7 01 00 00       	push   $0x1f7
  100212:	e8 54 fe ff ff       	call   10006b <outByte>
  100217:	83 c4 08             	add    $0x8,%esp
  10021a:	e8 75 fe ff ff       	call   100094 <waitDisk>
  10021f:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  100226:	eb 22                	jmp    10024a <writeSect+0xbf>
  100228:	8b 45 fc             	mov    -0x4(%ebp),%eax
  10022b:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
  100232:	8b 45 08             	mov    0x8(%ebp),%eax
  100235:	01 d0                	add    %edx,%eax
  100237:	8b 00                	mov    (%eax),%eax
  100239:	50                   	push   %eax
  10023a:	68 f0 01 00 00       	push   $0x1f0
  10023f:	e8 e1 fd ff ff       	call   100025 <outLong>
  100244:	83 c4 08             	add    $0x8,%esp
  100247:	ff 45 fc             	incl   -0x4(%ebp)
  10024a:	83 7d fc 7f          	cmpl   $0x7f,-0x4(%ebp)
  10024e:	7e d8                	jle    100228 <writeSect+0x9d>
  100250:	90                   	nop
  100251:	c9                   	leave  
  100252:	c3                   	ret    

00100253 <diskRead>:
  100253:	55                   	push   %ebp
  100254:	89 e5                	mov    %esp,%ebp
  100256:	81 ec 10 02 00 00    	sub    $0x210,%esp
  10025c:	e8 e4 01 00 00       	call   100445 <__x86.get_pc_thunk.ax>
  100261:	05 9f 5d 00 00       	add    $0x5d9f,%eax
  100266:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  10026d:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
  100274:	8b 45 14             	mov    0x14(%ebp),%eax
  100277:	85 c0                	test   %eax,%eax
  100279:	79 05                	jns    100280 <diskRead+0x2d>
  10027b:	05 ff 01 00 00       	add    $0x1ff,%eax
  100280:	c1 f8 09             	sar    $0x9,%eax
  100283:	89 45 f4             	mov    %eax,-0xc(%ebp)
  100286:	8b 45 14             	mov    0x14(%ebp),%eax
  100289:	25 ff 01 00 80       	and    $0x800001ff,%eax
  10028e:	85 c0                	test   %eax,%eax
  100290:	79 07                	jns    100299 <diskRead+0x46>
  100292:	48                   	dec    %eax
  100293:	0d 00 fe ff ff       	or     $0xfffffe00,%eax
  100298:	40                   	inc    %eax
  100299:	89 45 f0             	mov    %eax,-0x10(%ebp)
  10029c:	8b 45 f4             	mov    -0xc(%ebp),%eax
  10029f:	8d 90 c9 00 00 00    	lea    0xc9(%eax),%edx
  1002a5:	8b 45 f8             	mov    -0x8(%ebp),%eax
  1002a8:	01 d0                	add    %edx,%eax
  1002aa:	50                   	push   %eax
  1002ab:	8d 85 f0 fd ff ff    	lea    -0x210(%ebp),%eax
  1002b1:	50                   	push   %eax
  1002b2:	e8 08 fe ff ff       	call   1000bf <readSect>
  1002b7:	83 c4 08             	add    $0x8,%esp
  1002ba:	ff 45 f8             	incl   -0x8(%ebp)
  1002bd:	eb 5e                	jmp    10031d <diskRead+0xca>
  1002bf:	8b 55 f0             	mov    -0x10(%ebp),%edx
  1002c2:	8b 45 fc             	mov    -0x4(%ebp),%eax
  1002c5:	01 d0                	add    %edx,%eax
  1002c7:	25 ff 01 00 80       	and    $0x800001ff,%eax
  1002cc:	85 c0                	test   %eax,%eax
  1002ce:	79 07                	jns    1002d7 <diskRead+0x84>
  1002d0:	48                   	dec    %eax
  1002d1:	0d 00 fe ff ff       	or     $0xfffffe00,%eax
  1002d6:	40                   	inc    %eax
  1002d7:	8b 4d fc             	mov    -0x4(%ebp),%ecx
  1002da:	8b 55 08             	mov    0x8(%ebp),%edx
  1002dd:	01 ca                	add    %ecx,%edx
  1002df:	8a 84 05 f0 fd ff ff 	mov    -0x210(%ebp,%eax,1),%al
  1002e6:	88 02                	mov    %al,(%edx)
  1002e8:	ff 45 fc             	incl   -0x4(%ebp)
  1002eb:	8b 55 f0             	mov    -0x10(%ebp),%edx
  1002ee:	8b 45 fc             	mov    -0x4(%ebp),%eax
  1002f1:	01 d0                	add    %edx,%eax
  1002f3:	25 ff 01 00 00       	and    $0x1ff,%eax
  1002f8:	85 c0                	test   %eax,%eax
  1002fa:	75 21                	jne    10031d <diskRead+0xca>
  1002fc:	8b 45 f4             	mov    -0xc(%ebp),%eax
  1002ff:	8d 90 c9 00 00 00    	lea    0xc9(%eax),%edx
  100305:	8b 45 f8             	mov    -0x8(%ebp),%eax
  100308:	01 d0                	add    %edx,%eax
  10030a:	50                   	push   %eax
  10030b:	8d 85 f0 fd ff ff    	lea    -0x210(%ebp),%eax
  100311:	50                   	push   %eax
  100312:	e8 a8 fd ff ff       	call   1000bf <readSect>
  100317:	83 c4 08             	add    $0x8,%esp
  10031a:	ff 45 f8             	incl   -0x8(%ebp)
  10031d:	8b 45 0c             	mov    0xc(%ebp),%eax
  100320:	0f af 45 10          	imul   0x10(%ebp),%eax
  100324:	39 45 fc             	cmp    %eax,-0x4(%ebp)
  100327:	7c 96                	jl     1002bf <diskRead+0x6c>
  100329:	90                   	nop
  10032a:	c9                   	leave  
  10032b:	c3                   	ret    

0010032c <diskWrite>:
  10032c:	55                   	push   %ebp
  10032d:	89 e5                	mov    %esp,%ebp
  10032f:	81 ec 10 02 00 00    	sub    $0x210,%esp
  100335:	e8 0b 01 00 00       	call   100445 <__x86.get_pc_thunk.ax>
  10033a:	05 c6 5c 00 00       	add    $0x5cc6,%eax
  10033f:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  100346:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
  10034d:	8b 45 14             	mov    0x14(%ebp),%eax
  100350:	85 c0                	test   %eax,%eax
  100352:	79 05                	jns    100359 <diskWrite+0x2d>
  100354:	05 ff 01 00 00       	add    $0x1ff,%eax
  100359:	c1 f8 09             	sar    $0x9,%eax
  10035c:	89 45 f4             	mov    %eax,-0xc(%ebp)
  10035f:	8b 45 14             	mov    0x14(%ebp),%eax
  100362:	25 ff 01 00 80       	and    $0x800001ff,%eax
  100367:	85 c0                	test   %eax,%eax
  100369:	79 07                	jns    100372 <diskWrite+0x46>
  10036b:	48                   	dec    %eax
  10036c:	0d 00 fe ff ff       	or     $0xfffffe00,%eax
  100371:	40                   	inc    %eax
  100372:	89 45 f0             	mov    %eax,-0x10(%ebp)
  100375:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100378:	8d 90 c9 00 00 00    	lea    0xc9(%eax),%edx
  10037e:	8b 45 f8             	mov    -0x8(%ebp),%eax
  100381:	01 d0                	add    %edx,%eax
  100383:	50                   	push   %eax
  100384:	8d 85 f0 fd ff ff    	lea    -0x210(%ebp),%eax
  10038a:	50                   	push   %eax
  10038b:	e8 2f fd ff ff       	call   1000bf <readSect>
  100390:	83 c4 08             	add    $0x8,%esp
  100393:	eb 7f                	jmp    100414 <diskWrite+0xe8>
  100395:	8b 55 fc             	mov    -0x4(%ebp),%edx
  100398:	8b 45 08             	mov    0x8(%ebp),%eax
  10039b:	8d 0c 02             	lea    (%edx,%eax,1),%ecx
  10039e:	8b 55 f0             	mov    -0x10(%ebp),%edx
  1003a1:	8b 45 fc             	mov    -0x4(%ebp),%eax
  1003a4:	01 d0                	add    %edx,%eax
  1003a6:	25 ff 01 00 80       	and    $0x800001ff,%eax
  1003ab:	85 c0                	test   %eax,%eax
  1003ad:	79 07                	jns    1003b6 <diskWrite+0x8a>
  1003af:	48                   	dec    %eax
  1003b0:	0d 00 fe ff ff       	or     $0xfffffe00,%eax
  1003b5:	40                   	inc    %eax
  1003b6:	89 c2                	mov    %eax,%edx
  1003b8:	8a 01                	mov    (%ecx),%al
  1003ba:	88 84 15 f0 fd ff ff 	mov    %al,-0x210(%ebp,%edx,1)
  1003c1:	ff 45 fc             	incl   -0x4(%ebp)
  1003c4:	8b 55 f0             	mov    -0x10(%ebp),%edx
  1003c7:	8b 45 fc             	mov    -0x4(%ebp),%eax
  1003ca:	01 d0                	add    %edx,%eax
  1003cc:	25 ff 01 00 00       	and    $0x1ff,%eax
  1003d1:	85 c0                	test   %eax,%eax
  1003d3:	75 3f                	jne    100414 <diskWrite+0xe8>
  1003d5:	8b 45 f4             	mov    -0xc(%ebp),%eax
  1003d8:	8d 90 c9 00 00 00    	lea    0xc9(%eax),%edx
  1003de:	8b 45 f8             	mov    -0x8(%ebp),%eax
  1003e1:	01 d0                	add    %edx,%eax
  1003e3:	50                   	push   %eax
  1003e4:	8d 85 f0 fd ff ff    	lea    -0x210(%ebp),%eax
  1003ea:	50                   	push   %eax
  1003eb:	e8 9b fd ff ff       	call   10018b <writeSect>
  1003f0:	83 c4 08             	add    $0x8,%esp
  1003f3:	ff 45 f8             	incl   -0x8(%ebp)
  1003f6:	8b 45 f4             	mov    -0xc(%ebp),%eax
  1003f9:	8d 90 c9 00 00 00    	lea    0xc9(%eax),%edx
  1003ff:	8b 45 f8             	mov    -0x8(%ebp),%eax
  100402:	01 d0                	add    %edx,%eax
  100404:	50                   	push   %eax
  100405:	8d 85 f0 fd ff ff    	lea    -0x210(%ebp),%eax
  10040b:	50                   	push   %eax
  10040c:	e8 ae fc ff ff       	call   1000bf <readSect>
  100411:	83 c4 08             	add    $0x8,%esp
  100414:	8b 45 0c             	mov    0xc(%ebp),%eax
  100417:	0f af 45 10          	imul   0x10(%ebp),%eax
  10041b:	39 45 fc             	cmp    %eax,-0x4(%ebp)
  10041e:	0f 8c 71 ff ff ff    	jl     100395 <diskWrite+0x69>
  100424:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100427:	8d 90 c9 00 00 00    	lea    0xc9(%eax),%edx
  10042d:	8b 45 f8             	mov    -0x8(%ebp),%eax
  100430:	01 d0                	add    %edx,%eax
  100432:	50                   	push   %eax
  100433:	8d 85 f0 fd ff ff    	lea    -0x210(%ebp),%eax
  100439:	50                   	push   %eax
  10043a:	e8 4c fd ff ff       	call   10018b <writeSect>
  10043f:	83 c4 08             	add    $0x8,%esp
  100442:	90                   	nop
  100443:	c9                   	leave  
  100444:	c3                   	ret    

00100445 <__x86.get_pc_thunk.ax>:
  100445:	8b 04 24             	mov    (%esp),%eax
  100448:	c3                   	ret    

00100449 <readSuperBlock>:
  100449:	55                   	push   %ebp
  10044a:	89 e5                	mov    %esp,%ebp
  10044c:	53                   	push   %ebx
  10044d:	83 ec 04             	sub    $0x4,%esp
  100450:	e8 f0 ff ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  100455:	05 ab 5b 00 00       	add    $0x5bab,%eax
  10045a:	6a 00                	push   $0x0
  10045c:	6a 01                	push   $0x1
  10045e:	68 00 04 00 00       	push   $0x400
  100463:	ff 75 08             	pushl  0x8(%ebp)
  100466:	89 c3                	mov    %eax,%ebx
  100468:	e8 e6 fd ff ff       	call   100253 <diskRead>
  10046d:	83 c4 10             	add    $0x10,%esp
  100470:	b8 00 00 00 00       	mov    $0x0,%eax
  100475:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  100478:	c9                   	leave  
  100479:	c3                   	ret    

0010047a <readBlock>:
  10047a:	55                   	push   %ebp
  10047b:	89 e5                	mov    %esp,%ebp
  10047d:	56                   	push   %esi
  10047e:	53                   	push   %ebx
  10047f:	83 ec 20             	sub    $0x20,%esp
  100482:	e8 ae 03 00 00       	call   100835 <__x86.get_pc_thunk.bx>
  100487:	81 c3 79 5b 00 00    	add    $0x5b79,%ebx
  10048d:	89 e0                	mov    %esp,%eax
  10048f:	89 c6                	mov    %eax,%esi
  100491:	8b 45 08             	mov    0x8(%ebp),%eax
  100494:	8b 40 14             	mov    0x14(%eax),%eax
  100497:	85 c0                	test   %eax,%eax
  100499:	79 03                	jns    10049e <readBlock+0x24>
  10049b:	83 c0 03             	add    $0x3,%eax
  10049e:	c1 f8 02             	sar    $0x2,%eax
  1004a1:	89 45 f4             	mov    %eax,-0xc(%ebp)
  1004a4:	c7 45 f0 0e 00 00 00 	movl   $0xe,-0x10(%ebp)
  1004ab:	8b 55 f0             	mov    -0x10(%ebp),%edx
  1004ae:	8b 45 f4             	mov    -0xc(%ebp),%eax
  1004b1:	01 d0                	add    %edx,%eax
  1004b3:	89 45 ec             	mov    %eax,-0x14(%ebp)
  1004b6:	8b 45 f4             	mov    -0xc(%ebp),%eax
  1004b9:	8d 50 ff             	lea    -0x1(%eax),%edx
  1004bc:	89 55 e8             	mov    %edx,-0x18(%ebp)
  1004bf:	c1 e0 02             	shl    $0x2,%eax
  1004c2:	8d 50 03             	lea    0x3(%eax),%edx
  1004c5:	b8 10 00 00 00       	mov    $0x10,%eax
  1004ca:	48                   	dec    %eax
  1004cb:	01 d0                	add    %edx,%eax
  1004cd:	b9 10 00 00 00       	mov    $0x10,%ecx
  1004d2:	ba 00 00 00 00       	mov    $0x0,%edx
  1004d7:	f7 f1                	div    %ecx
  1004d9:	6b c0 10             	imul   $0x10,%eax,%eax
  1004dc:	29 c4                	sub    %eax,%esp
  1004de:	89 e0                	mov    %esp,%eax
  1004e0:	83 c0 03             	add    $0x3,%eax
  1004e3:	c1 e8 02             	shr    $0x2,%eax
  1004e6:	c1 e0 02             	shl    $0x2,%eax
  1004e9:	89 45 e4             	mov    %eax,-0x1c(%ebp)
  1004ec:	8b 45 10             	mov    0x10(%ebp),%eax
  1004ef:	3b 45 f0             	cmp    -0x10(%ebp),%eax
  1004f2:	7d 2b                	jge    10051f <readBlock+0xa5>
  1004f4:	8b 45 0c             	mov    0xc(%ebp),%eax
  1004f7:	8b 55 10             	mov    0x10(%ebp),%edx
  1004fa:	8b 44 90 0c          	mov    0xc(%eax,%edx,4),%eax
  1004fe:	c1 e0 09             	shl    $0x9,%eax
  100501:	89 c2                	mov    %eax,%edx
  100503:	8b 45 08             	mov    0x8(%ebp),%eax
  100506:	8b 40 14             	mov    0x14(%eax),%eax
  100509:	52                   	push   %edx
  10050a:	50                   	push   %eax
  10050b:	6a 01                	push   $0x1
  10050d:	ff 75 14             	pushl  0x14(%ebp)
  100510:	e8 3e fd ff ff       	call   100253 <diskRead>
  100515:	83 c4 10             	add    $0x10,%esp
  100518:	b8 00 00 00 00       	mov    $0x0,%eax
  10051d:	eb 5d                	jmp    10057c <readBlock+0x102>
  10051f:	8b 45 10             	mov    0x10(%ebp),%eax
  100522:	3b 45 ec             	cmp    -0x14(%ebp),%eax
  100525:	7d 50                	jge    100577 <readBlock+0xfd>
  100527:	8b 45 0c             	mov    0xc(%ebp),%eax
  10052a:	8b 40 44             	mov    0x44(%eax),%eax
  10052d:	c1 e0 09             	shl    $0x9,%eax
  100530:	89 c1                	mov    %eax,%ecx
  100532:	8b 45 08             	mov    0x8(%ebp),%eax
  100535:	8b 50 14             	mov    0x14(%eax),%edx
  100538:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  10053b:	51                   	push   %ecx
  10053c:	52                   	push   %edx
  10053d:	6a 01                	push   $0x1
  10053f:	50                   	push   %eax
  100540:	e8 0e fd ff ff       	call   100253 <diskRead>
  100545:	83 c4 10             	add    $0x10,%esp
  100548:	8b 45 10             	mov    0x10(%ebp),%eax
  10054b:	2b 45 f0             	sub    -0x10(%ebp),%eax
  10054e:	89 c2                	mov    %eax,%edx
  100550:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  100553:	8b 04 90             	mov    (%eax,%edx,4),%eax
  100556:	c1 e0 09             	shl    $0x9,%eax
  100559:	89 c2                	mov    %eax,%edx
  10055b:	8b 45 08             	mov    0x8(%ebp),%eax
  10055e:	8b 40 14             	mov    0x14(%eax),%eax
  100561:	52                   	push   %edx
  100562:	50                   	push   %eax
  100563:	6a 01                	push   $0x1
  100565:	ff 75 14             	pushl  0x14(%ebp)
  100568:	e8 e6 fc ff ff       	call   100253 <diskRead>
  10056d:	83 c4 10             	add    $0x10,%esp
  100570:	b8 00 00 00 00       	mov    $0x0,%eax
  100575:	eb 05                	jmp    10057c <readBlock+0x102>
  100577:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  10057c:	89 f4                	mov    %esi,%esp
  10057e:	8d 65 f8             	lea    -0x8(%ebp),%esp
  100581:	5b                   	pop    %ebx
  100582:	5e                   	pop    %esi
  100583:	5d                   	pop    %ebp
  100584:	c3                   	ret    

00100585 <readInode>:
  100585:	55                   	push   %ebp
  100586:	89 e5                	mov    %esp,%ebp
  100588:	57                   	push   %edi
  100589:	56                   	push   %esi
  10058a:	53                   	push   %ebx
  10058b:	83 ec 3c             	sub    $0x3c,%esp
  10058e:	e8 a2 02 00 00       	call   100835 <__x86.get_pc_thunk.bx>
  100593:	81 c3 6d 5a 00 00    	add    $0x5a6d,%ebx
  100599:	89 e0                	mov    %esp,%eax
  10059b:	89 c6                	mov    %eax,%esi
  10059d:	c7 45 d8 00 00 00 00 	movl   $0x0,-0x28(%ebp)
  1005a4:	c7 45 dc 00 00 00 00 	movl   $0x0,-0x24(%ebp)
  1005ab:	c7 45 d4 00 00 00 00 	movl   $0x0,-0x2c(%ebp)
  1005b2:	c7 45 e0 00 00 00 00 	movl   $0x0,-0x20(%ebp)
  1005b9:	8b 45 10             	mov    0x10(%ebp),%eax
  1005bc:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
  1005c2:	8b 45 08             	mov    0x8(%ebp),%eax
  1005c5:	8b 40 14             	mov    0x14(%eax),%eax
  1005c8:	8d 50 ff             	lea    -0x1(%eax),%edx
  1005cb:	89 55 d0             	mov    %edx,-0x30(%ebp)
  1005ce:	89 c2                	mov    %eax,%edx
  1005d0:	b8 10 00 00 00       	mov    $0x10,%eax
  1005d5:	48                   	dec    %eax
  1005d6:	01 d0                	add    %edx,%eax
  1005d8:	bf 10 00 00 00       	mov    $0x10,%edi
  1005dd:	ba 00 00 00 00       	mov    $0x0,%edx
  1005e2:	f7 f7                	div    %edi
  1005e4:	6b c0 10             	imul   $0x10,%eax,%eax
  1005e7:	29 c4                	sub    %eax,%esp
  1005e9:	89 e0                	mov    %esp,%eax
  1005eb:	83 c0 00             	add    $0x0,%eax
  1005ee:	89 45 cc             	mov    %eax,-0x34(%ebp)
  1005f1:	c7 45 c8 00 00 00 00 	movl   $0x0,-0x38(%ebp)
  1005f8:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
  1005ff:	c7 45 c0 00 00 00 00 	movl   $0x0,-0x40(%ebp)
  100606:	c7 45 c4 00 00 00 00 	movl   $0x0,-0x3c(%ebp)
  10060d:	83 7d 14 00          	cmpl   $0x0,0x14(%ebp)
  100611:	74 0e                	je     100621 <readInode+0x9c>
  100613:	8b 55 e4             	mov    -0x1c(%ebp),%edx
  100616:	8b 45 14             	mov    0x14(%ebp),%eax
  100619:	01 d0                	add    %edx,%eax
  10061b:	8a 00                	mov    (%eax),%al
  10061d:	84 c0                	test   %al,%al
  10061f:	75 0a                	jne    10062b <readInode+0xa6>
  100621:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  100626:	e9 00 02 00 00       	jmp    10082b <readInode+0x2a6>
  10062b:	83 ec 04             	sub    $0x4,%esp
  10062e:	8d 45 c0             	lea    -0x40(%ebp),%eax
  100631:	50                   	push   %eax
  100632:	6a 2f                	push   $0x2f
  100634:	ff 75 14             	pushl  0x14(%ebp)
  100637:	e8 82 39 00 00       	call   103fbe <stringChr>
  10063c:	83 c4 10             	add    $0x10,%esp
  10063f:	89 45 d4             	mov    %eax,-0x2c(%ebp)
  100642:	83 7d d4 ff          	cmpl   $0xffffffff,-0x2c(%ebp)
  100646:	74 07                	je     10064f <readInode+0xca>
  100648:	8b 45 c0             	mov    -0x40(%ebp),%eax
  10064b:	85 c0                	test   %eax,%eax
  10064d:	74 0a                	je     100659 <readInode+0xd4>
  10064f:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  100654:	e9 d2 01 00 00       	jmp    10082b <readInode+0x2a6>
  100659:	ff 45 e4             	incl   -0x1c(%ebp)
  10065c:	8b 45 08             	mov    0x8(%ebp),%eax
  10065f:	8b 40 20             	mov    0x20(%eax),%eax
  100662:	c1 e0 09             	shl    $0x9,%eax
  100665:	89 c2                	mov    %eax,%edx
  100667:	8b 45 10             	mov    0x10(%ebp),%eax
  10066a:	89 10                	mov    %edx,(%eax)
  10066c:	8b 45 10             	mov    0x10(%ebp),%eax
  10066f:	8b 00                	mov    (%eax),%eax
  100671:	50                   	push   %eax
  100672:	6a 01                	push   $0x1
  100674:	68 80 00 00 00       	push   $0x80
  100679:	ff 75 0c             	pushl  0xc(%ebp)
  10067c:	e8 d2 fb ff ff       	call   100253 <diskRead>
  100681:	83 c4 10             	add    $0x10,%esp
  100684:	e9 8b 01 00 00       	jmp    100814 <readInode+0x28f>
  100689:	8b 55 e4             	mov    -0x1c(%ebp),%edx
  10068c:	8b 45 14             	mov    0x14(%ebp),%eax
  10068f:	01 c2                	add    %eax,%edx
  100691:	83 ec 04             	sub    $0x4,%esp
  100694:	8d 45 c0             	lea    -0x40(%ebp),%eax
  100697:	50                   	push   %eax
  100698:	6a 2f                	push   $0x2f
  10069a:	52                   	push   %edx
  10069b:	e8 1e 39 00 00       	call   103fbe <stringChr>
  1006a0:	83 c4 10             	add    $0x10,%esp
  1006a3:	89 45 d4             	mov    %eax,-0x2c(%ebp)
  1006a6:	83 7d d4 00          	cmpl   $0x0,-0x2c(%ebp)
  1006aa:	75 11                	jne    1006bd <readInode+0x138>
  1006ac:	8b 45 c0             	mov    -0x40(%ebp),%eax
  1006af:	85 c0                	test   %eax,%eax
  1006b1:	75 0a                	jne    1006bd <readInode+0x138>
  1006b3:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  1006b8:	e9 6e 01 00 00       	jmp    10082b <readInode+0x2a6>
  1006bd:	83 7d d4 ff          	cmpl   $0xffffffff,-0x2c(%ebp)
  1006c1:	75 09                	jne    1006cc <readInode+0x147>
  1006c3:	c7 45 e0 01 00 00 00 	movl   $0x1,-0x20(%ebp)
  1006ca:	eb 15                	jmp    1006e1 <readInode+0x15c>
  1006cc:	8b 45 0c             	mov    0xc(%ebp),%eax
  1006cf:	8b 00                	mov    (%eax),%eax
  1006d1:	66 83 f8 01          	cmp    $0x1,%ax
  1006d5:	75 0a                	jne    1006e1 <readInode+0x15c>
  1006d7:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  1006dc:	e9 4a 01 00 00       	jmp    10082b <readInode+0x2a6>
  1006e1:	8b 45 0c             	mov    0xc(%ebp),%eax
  1006e4:	8b 40 04             	mov    0x4(%eax),%eax
  1006e7:	89 45 c4             	mov    %eax,-0x3c(%ebp)
  1006ea:	c7 45 d8 00 00 00 00 	movl   $0x0,-0x28(%ebp)
  1006f1:	e9 ea 00 00 00       	jmp    1007e0 <readInode+0x25b>
  1006f6:	8b 45 cc             	mov    -0x34(%ebp),%eax
  1006f9:	50                   	push   %eax
  1006fa:	ff 75 d8             	pushl  -0x28(%ebp)
  1006fd:	ff 75 0c             	pushl  0xc(%ebp)
  100700:	ff 75 08             	pushl  0x8(%ebp)
  100703:	e8 72 fd ff ff       	call   10047a <readBlock>
  100708:	83 c4 10             	add    $0x10,%esp
  10070b:	89 45 d4             	mov    %eax,-0x2c(%ebp)
  10070e:	83 7d d4 ff          	cmpl   $0xffffffff,-0x2c(%ebp)
  100712:	75 0a                	jne    10071e <readInode+0x199>
  100714:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  100719:	e9 0d 01 00 00       	jmp    10082b <readInode+0x2a6>
  10071e:	8b 45 cc             	mov    -0x34(%ebp),%eax
  100721:	89 45 c8             	mov    %eax,-0x38(%ebp)
  100724:	c7 45 dc 00 00 00 00 	movl   $0x0,-0x24(%ebp)
  10072b:	e9 85 00 00 00       	jmp    1007b5 <readInode+0x230>
  100730:	8b 45 dc             	mov    -0x24(%ebp),%eax
  100733:	c1 e0 07             	shl    $0x7,%eax
  100736:	89 c2                	mov    %eax,%edx
  100738:	8b 45 c8             	mov    -0x38(%ebp),%eax
  10073b:	01 d0                	add    %edx,%eax
  10073d:	8b 00                	mov    (%eax),%eax
  10073f:	85 c0                	test   %eax,%eax
  100741:	74 6e                	je     1007b1 <readInode+0x22c>
  100743:	8b 45 c0             	mov    -0x40(%ebp),%eax
  100746:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
  100749:	8b 55 14             	mov    0x14(%ebp),%edx
  10074c:	01 d1                	add    %edx,%ecx
  10074e:	8b 55 dc             	mov    -0x24(%ebp),%edx
  100751:	89 d7                	mov    %edx,%edi
  100753:	c1 e7 07             	shl    $0x7,%edi
  100756:	8b 55 c8             	mov    -0x38(%ebp),%edx
  100759:	01 fa                	add    %edi,%edx
  10075b:	83 c2 04             	add    $0x4,%edx
  10075e:	83 ec 04             	sub    $0x4,%esp
  100761:	50                   	push   %eax
  100762:	51                   	push   %ecx
  100763:	52                   	push   %edx
  100764:	e8 7c 39 00 00       	call   1040e5 <stringCmp>
  100769:	83 c4 10             	add    $0x10,%esp
  10076c:	85 c0                	test   %eax,%eax
  10076e:	75 42                	jne    1007b2 <readInode+0x22d>
  100770:	8b 45 08             	mov    0x8(%ebp),%eax
  100773:	8b 40 20             	mov    0x20(%eax),%eax
  100776:	c1 e0 09             	shl    $0x9,%eax
  100779:	89 c2                	mov    %eax,%edx
  10077b:	8b 45 dc             	mov    -0x24(%ebp),%eax
  10077e:	c1 e0 07             	shl    $0x7,%eax
  100781:	89 c1                	mov    %eax,%ecx
  100783:	8b 45 c8             	mov    -0x38(%ebp),%eax
  100786:	01 c8                	add    %ecx,%eax
  100788:	8b 00                	mov    (%eax),%eax
  10078a:	48                   	dec    %eax
  10078b:	c1 e0 07             	shl    $0x7,%eax
  10078e:	01 d0                	add    %edx,%eax
  100790:	89 c2                	mov    %eax,%edx
  100792:	8b 45 10             	mov    0x10(%ebp),%eax
  100795:	89 10                	mov    %edx,(%eax)
  100797:	8b 45 10             	mov    0x10(%ebp),%eax
  10079a:	8b 00                	mov    (%eax),%eax
  10079c:	50                   	push   %eax
  10079d:	6a 01                	push   $0x1
  10079f:	68 80 00 00 00       	push   $0x80
  1007a4:	ff 75 0c             	pushl  0xc(%ebp)
  1007a7:	e8 a7 fa ff ff       	call   100253 <diskRead>
  1007ac:	83 c4 10             	add    $0x10,%esp
  1007af:	eb 1a                	jmp    1007cb <readInode+0x246>
  1007b1:	90                   	nop
  1007b2:	ff 45 dc             	incl   -0x24(%ebp)
  1007b5:	8b 45 08             	mov    0x8(%ebp),%eax
  1007b8:	8b 40 14             	mov    0x14(%eax),%eax
  1007bb:	c1 e8 07             	shr    $0x7,%eax
  1007be:	89 c2                	mov    %eax,%edx
  1007c0:	8b 45 dc             	mov    -0x24(%ebp),%eax
  1007c3:	39 c2                	cmp    %eax,%edx
  1007c5:	0f 87 65 ff ff ff    	ja     100730 <readInode+0x1ab>
  1007cb:	8b 45 08             	mov    0x8(%ebp),%eax
  1007ce:	8b 40 14             	mov    0x14(%eax),%eax
  1007d1:	c1 e8 07             	shr    $0x7,%eax
  1007d4:	89 c2                	mov    %eax,%edx
  1007d6:	8b 45 dc             	mov    -0x24(%ebp),%eax
  1007d9:	39 c2                	cmp    %eax,%edx
  1007db:	77 11                	ja     1007ee <readInode+0x269>
  1007dd:	ff 45 d8             	incl   -0x28(%ebp)
  1007e0:	8b 45 d8             	mov    -0x28(%ebp),%eax
  1007e3:	3b 45 c4             	cmp    -0x3c(%ebp),%eax
  1007e6:	0f 8c 0a ff ff ff    	jl     1006f6 <readInode+0x171>
  1007ec:	eb 01                	jmp    1007ef <readInode+0x26a>
  1007ee:	90                   	nop
  1007ef:	8b 45 d8             	mov    -0x28(%ebp),%eax
  1007f2:	3b 45 c4             	cmp    -0x3c(%ebp),%eax
  1007f5:	7d 16                	jge    10080d <readInode+0x288>
  1007f7:	83 7d e0 00          	cmpl   $0x0,-0x20(%ebp)
  1007fb:	75 09                	jne    100806 <readInode+0x281>
  1007fd:	8b 45 c0             	mov    -0x40(%ebp),%eax
  100800:	40                   	inc    %eax
  100801:	01 45 e4             	add    %eax,-0x1c(%ebp)
  100804:	eb 0e                	jmp    100814 <readInode+0x28f>
  100806:	b8 00 00 00 00       	mov    $0x0,%eax
  10080b:	eb 1e                	jmp    10082b <readInode+0x2a6>
  10080d:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  100812:	eb 17                	jmp    10082b <readInode+0x2a6>
  100814:	8b 55 e4             	mov    -0x1c(%ebp),%edx
  100817:	8b 45 14             	mov    0x14(%ebp),%eax
  10081a:	01 d0                	add    %edx,%eax
  10081c:	8a 00                	mov    (%eax),%al
  10081e:	84 c0                	test   %al,%al
  100820:	0f 85 63 fe ff ff    	jne    100689 <readInode+0x104>
  100826:	b8 00 00 00 00       	mov    $0x0,%eax
  10082b:	89 f4                	mov    %esi,%esp
  10082d:	8d 65 f4             	lea    -0xc(%ebp),%esp
  100830:	5b                   	pop    %ebx
  100831:	5e                   	pop    %esi
  100832:	5f                   	pop    %edi
  100833:	5d                   	pop    %ebp
  100834:	c3                   	ret    

00100835 <__x86.get_pc_thunk.bx>:
  100835:	8b 1c 24             	mov    (%esp),%ebx
  100838:	c3                   	ret    

00100839 <outByte>:
  100839:	55                   	push   %ebp
  10083a:	89 e5                	mov    %esp,%ebp
  10083c:	83 ec 08             	sub    $0x8,%esp
  10083f:	e8 01 fc ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  100844:	05 bc 57 00 00       	add    $0x57bc,%eax
  100849:	8b 45 08             	mov    0x8(%ebp),%eax
  10084c:	8b 55 0c             	mov    0xc(%ebp),%edx
  10084f:	66 89 45 fc          	mov    %ax,-0x4(%ebp)
  100853:	88 d0                	mov    %dl,%al
  100855:	88 45 f8             	mov    %al,-0x8(%ebp)
  100858:	8a 45 f8             	mov    -0x8(%ebp),%al
  10085b:	8b 55 fc             	mov    -0x4(%ebp),%edx
  10085e:	ee                   	out    %al,(%dx)
  10085f:	90                   	nop
  100860:	c9                   	leave  
  100861:	c3                   	ret    

00100862 <initIntr>:
  100862:	55                   	push   %ebp
  100863:	89 e5                	mov    %esp,%ebp
  100865:	e8 db fb ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  10086a:	05 96 57 00 00       	add    $0x5796,%eax
  10086f:	6a 11                	push   $0x11
  100871:	6a 20                	push   $0x20
  100873:	e8 c1 ff ff ff       	call   100839 <outByte>
  100878:	83 c4 08             	add    $0x8,%esp
  10087b:	6a 11                	push   $0x11
  10087d:	68 a0 00 00 00       	push   $0xa0
  100882:	e8 b2 ff ff ff       	call   100839 <outByte>
  100887:	83 c4 08             	add    $0x8,%esp
  10088a:	6a 20                	push   $0x20
  10088c:	6a 21                	push   $0x21
  10088e:	e8 a6 ff ff ff       	call   100839 <outByte>
  100893:	83 c4 08             	add    $0x8,%esp
  100896:	6a 28                	push   $0x28
  100898:	68 a1 00 00 00       	push   $0xa1
  10089d:	e8 97 ff ff ff       	call   100839 <outByte>
  1008a2:	83 c4 08             	add    $0x8,%esp
  1008a5:	6a 04                	push   $0x4
  1008a7:	6a 21                	push   $0x21
  1008a9:	e8 8b ff ff ff       	call   100839 <outByte>
  1008ae:	83 c4 08             	add    $0x8,%esp
  1008b1:	6a 02                	push   $0x2
  1008b3:	68 a1 00 00 00       	push   $0xa1
  1008b8:	e8 7c ff ff ff       	call   100839 <outByte>
  1008bd:	83 c4 08             	add    $0x8,%esp
  1008c0:	6a 03                	push   $0x3
  1008c2:	6a 21                	push   $0x21
  1008c4:	e8 70 ff ff ff       	call   100839 <outByte>
  1008c9:	83 c4 08             	add    $0x8,%esp
  1008cc:	6a 03                	push   $0x3
  1008ce:	68 a1 00 00 00       	push   $0xa1
  1008d3:	e8 61 ff ff ff       	call   100839 <outByte>
  1008d8:	83 c4 08             	add    $0x8,%esp
  1008db:	90                   	nop
  1008dc:	c9                   	leave  
  1008dd:	c3                   	ret    

001008de <saveIdt>:
  1008de:	55                   	push   %ebp
  1008df:	89 e5                	mov    %esp,%ebp
  1008e1:	e8 5f fb ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  1008e6:	05 1a 57 00 00       	add    $0x571a,%eax
  1008eb:	8b 55 0c             	mov    0xc(%ebp),%edx
  1008ee:	4a                   	dec    %edx
  1008ef:	66 89 90 20 01 00 00 	mov    %dx,0x120(%eax)
  1008f6:	8b 55 08             	mov    0x8(%ebp),%edx
  1008f9:	66 89 90 22 01 00 00 	mov    %dx,0x122(%eax)
  100900:	8b 55 08             	mov    0x8(%ebp),%edx
  100903:	c1 ea 10             	shr    $0x10,%edx
  100906:	66 89 90 24 01 00 00 	mov    %dx,0x124(%eax)
  10090d:	8d 80 20 01 00 00    	lea    0x120(%eax),%eax
  100913:	0f 01 18             	lidtl  (%eax)
  100916:	90                   	nop
  100917:	5d                   	pop    %ebp
  100918:	c3                   	ret    

00100919 <setIntr>:
  100919:	55                   	push   %ebp
  10091a:	89 e5                	mov    %esp,%ebp
  10091c:	e8 24 fb ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  100921:	05 df 56 00 00       	add    $0x56df,%eax
  100926:	8b 45 10             	mov    0x10(%ebp),%eax
  100929:	8b 55 08             	mov    0x8(%ebp),%edx
  10092c:	66 89 02             	mov    %ax,(%edx)
  10092f:	8b 45 0c             	mov    0xc(%ebp),%eax
  100932:	c1 e0 03             	shl    $0x3,%eax
  100935:	8b 55 08             	mov    0x8(%ebp),%edx
  100938:	66 89 42 02          	mov    %ax,0x2(%edx)
  10093c:	8b 45 08             	mov    0x8(%ebp),%eax
  10093f:	c6 40 04 00          	movb   $0x0,0x4(%eax)
  100943:	8b 45 08             	mov    0x8(%ebp),%eax
  100946:	8a 50 05             	mov    0x5(%eax),%dl
  100949:	83 e2 f0             	and    $0xfffffff0,%edx
  10094c:	83 ca 0e             	or     $0xe,%edx
  10094f:	88 50 05             	mov    %dl,0x5(%eax)
  100952:	8b 45 08             	mov    0x8(%ebp),%eax
  100955:	8a 50 05             	mov    0x5(%eax),%dl
  100958:	83 e2 ef             	and    $0xffffffef,%edx
  10095b:	88 50 05             	mov    %dl,0x5(%eax)
  10095e:	8b 45 14             	mov    0x14(%ebp),%eax
  100961:	88 c2                	mov    %al,%dl
  100963:	83 e2 03             	and    $0x3,%edx
  100966:	8b 45 08             	mov    0x8(%ebp),%eax
  100969:	83 e2 03             	and    $0x3,%edx
  10096c:	88 d1                	mov    %dl,%cl
  10096e:	c1 e1 05             	shl    $0x5,%ecx
  100971:	8a 50 05             	mov    0x5(%eax),%dl
  100974:	83 e2 9f             	and    $0xffffff9f,%edx
  100977:	09 ca                	or     %ecx,%edx
  100979:	88 50 05             	mov    %dl,0x5(%eax)
  10097c:	8b 45 08             	mov    0x8(%ebp),%eax
  10097f:	8a 50 05             	mov    0x5(%eax),%dl
  100982:	83 ca 80             	or     $0xffffff80,%edx
  100985:	88 50 05             	mov    %dl,0x5(%eax)
  100988:	8b 45 10             	mov    0x10(%ebp),%eax
  10098b:	c1 e8 10             	shr    $0x10,%eax
  10098e:	8b 55 08             	mov    0x8(%ebp),%edx
  100991:	66 89 42 06          	mov    %ax,0x6(%edx)
  100995:	90                   	nop
  100996:	5d                   	pop    %ebp
  100997:	c3                   	ret    

00100998 <setTrap>:
  100998:	55                   	push   %ebp
  100999:	89 e5                	mov    %esp,%ebp
  10099b:	e8 a5 fa ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  1009a0:	05 60 56 00 00       	add    $0x5660,%eax
  1009a5:	8b 45 10             	mov    0x10(%ebp),%eax
  1009a8:	8b 55 08             	mov    0x8(%ebp),%edx
  1009ab:	66 89 02             	mov    %ax,(%edx)
  1009ae:	8b 45 0c             	mov    0xc(%ebp),%eax
  1009b1:	c1 e0 03             	shl    $0x3,%eax
  1009b4:	8b 55 08             	mov    0x8(%ebp),%edx
  1009b7:	66 89 42 02          	mov    %ax,0x2(%edx)
  1009bb:	8b 45 08             	mov    0x8(%ebp),%eax
  1009be:	c6 40 04 00          	movb   $0x0,0x4(%eax)
  1009c2:	8b 45 08             	mov    0x8(%ebp),%eax
  1009c5:	8a 50 05             	mov    0x5(%eax),%dl
  1009c8:	83 ca 0f             	or     $0xf,%edx
  1009cb:	88 50 05             	mov    %dl,0x5(%eax)
  1009ce:	8b 45 08             	mov    0x8(%ebp),%eax
  1009d1:	8a 50 05             	mov    0x5(%eax),%dl
  1009d4:	83 e2 ef             	and    $0xffffffef,%edx
  1009d7:	88 50 05             	mov    %dl,0x5(%eax)
  1009da:	8b 45 14             	mov    0x14(%ebp),%eax
  1009dd:	88 c2                	mov    %al,%dl
  1009df:	83 e2 03             	and    $0x3,%edx
  1009e2:	8b 45 08             	mov    0x8(%ebp),%eax
  1009e5:	83 e2 03             	and    $0x3,%edx
  1009e8:	88 d1                	mov    %dl,%cl
  1009ea:	c1 e1 05             	shl    $0x5,%ecx
  1009ed:	8a 50 05             	mov    0x5(%eax),%dl
  1009f0:	83 e2 9f             	and    $0xffffff9f,%edx
  1009f3:	09 ca                	or     %ecx,%edx
  1009f5:	88 50 05             	mov    %dl,0x5(%eax)
  1009f8:	8b 45 08             	mov    0x8(%ebp),%eax
  1009fb:	8a 50 05             	mov    0x5(%eax),%dl
  1009fe:	83 ca 80             	or     $0xffffff80,%edx
  100a01:	88 50 05             	mov    %dl,0x5(%eax)
  100a04:	8b 45 10             	mov    0x10(%ebp),%eax
  100a07:	c1 e8 10             	shr    $0x10,%eax
  100a0a:	8b 55 08             	mov    0x8(%ebp),%edx
  100a0d:	66 89 42 06          	mov    %ax,0x6(%edx)
  100a11:	90                   	nop
  100a12:	5d                   	pop    %ebp
  100a13:	c3                   	ret    

00100a14 <initIdt>:
  100a14:	55                   	push   %ebp
  100a15:	89 e5                	mov    %esp,%ebp
  100a17:	53                   	push   %ebx
  100a18:	83 ec 10             	sub    $0x10,%esp
  100a1b:	e8 15 fe ff ff       	call   100835 <__x86.get_pc_thunk.bx>
  100a20:	81 c3 e0 55 00 00    	add    $0x55e0,%ebx
  100a26:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
  100a2d:	eb 2b                	jmp    100a5a <initIdt+0x46>
  100a2f:	c7 c0 63 42 10 00    	mov    $0x104263,%eax
  100a35:	89 c2                	mov    %eax,%edx
  100a37:	8b 45 f8             	mov    -0x8(%ebp),%eax
  100a3a:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
  100a41:	c7 c0 40 62 10 00    	mov    $0x106240,%eax
  100a47:	01 c8                	add    %ecx,%eax
  100a49:	6a 00                	push   $0x0
  100a4b:	52                   	push   %edx
  100a4c:	6a 01                	push   $0x1
  100a4e:	50                   	push   %eax
  100a4f:	e8 44 ff ff ff       	call   100998 <setTrap>
  100a54:	83 c4 10             	add    $0x10,%esp
  100a57:	ff 45 f8             	incl   -0x8(%ebp)
  100a5a:	81 7d f8 ff 00 00 00 	cmpl   $0xff,-0x8(%ebp)
  100a61:	7e cc                	jle    100a2f <initIdt+0x1b>
  100a63:	c7 c0 6d 42 10 00    	mov    $0x10426d,%eax
  100a69:	89 c2                	mov    %eax,%edx
  100a6b:	c7 c0 40 62 10 00    	mov    $0x106240,%eax
  100a71:	8d 40 40             	lea    0x40(%eax),%eax
  100a74:	6a 00                	push   $0x0
  100a76:	52                   	push   %edx
  100a77:	6a 01                	push   $0x1
  100a79:	50                   	push   %eax
  100a7a:	e8 19 ff ff ff       	call   100998 <setTrap>
  100a7f:	83 c4 10             	add    $0x10,%esp
  100a82:	c7 c0 71 42 10 00    	mov    $0x104271,%eax
  100a88:	89 c2                	mov    %eax,%edx
  100a8a:	c7 c0 40 62 10 00    	mov    $0x106240,%eax
  100a90:	8d 40 50             	lea    0x50(%eax),%eax
  100a93:	6a 00                	push   $0x0
  100a95:	52                   	push   %edx
  100a96:	6a 01                	push   $0x1
  100a98:	50                   	push   %eax
  100a99:	e8 fa fe ff ff       	call   100998 <setTrap>
  100a9e:	83 c4 10             	add    $0x10,%esp
  100aa1:	c7 c0 75 42 10 00    	mov    $0x104275,%eax
  100aa7:	89 c2                	mov    %eax,%edx
  100aa9:	c7 c0 40 62 10 00    	mov    $0x106240,%eax
  100aaf:	8d 40 58             	lea    0x58(%eax),%eax
  100ab2:	6a 00                	push   $0x0
  100ab4:	52                   	push   %edx
  100ab5:	6a 01                	push   $0x1
  100ab7:	50                   	push   %eax
  100ab8:	e8 db fe ff ff       	call   100998 <setTrap>
  100abd:	83 c4 10             	add    $0x10,%esp
  100ac0:	c7 c0 79 42 10 00    	mov    $0x104279,%eax
  100ac6:	89 c2                	mov    %eax,%edx
  100ac8:	c7 c0 40 62 10 00    	mov    $0x106240,%eax
  100ace:	8d 40 60             	lea    0x60(%eax),%eax
  100ad1:	6a 00                	push   $0x0
  100ad3:	52                   	push   %edx
  100ad4:	6a 01                	push   $0x1
  100ad6:	50                   	push   %eax
  100ad7:	e8 bc fe ff ff       	call   100998 <setTrap>
  100adc:	83 c4 10             	add    $0x10,%esp
  100adf:	c7 c0 7d 42 10 00    	mov    $0x10427d,%eax
  100ae5:	89 c2                	mov    %eax,%edx
  100ae7:	c7 c0 40 62 10 00    	mov    $0x106240,%eax
  100aed:	8d 40 68             	lea    0x68(%eax),%eax
  100af0:	6a 00                	push   $0x0
  100af2:	52                   	push   %edx
  100af3:	6a 01                	push   $0x1
  100af5:	50                   	push   %eax
  100af6:	e8 9d fe ff ff       	call   100998 <setTrap>
  100afb:	83 c4 10             	add    $0x10,%esp
  100afe:	c7 c0 81 42 10 00    	mov    $0x104281,%eax
  100b04:	89 c2                	mov    %eax,%edx
  100b06:	c7 c0 40 62 10 00    	mov    $0x106240,%eax
  100b0c:	8d 40 70             	lea    0x70(%eax),%eax
  100b0f:	6a 00                	push   $0x0
  100b11:	52                   	push   %edx
  100b12:	6a 01                	push   $0x1
  100b14:	50                   	push   %eax
  100b15:	e8 7e fe ff ff       	call   100998 <setTrap>
  100b1a:	83 c4 10             	add    $0x10,%esp
  100b1d:	c7 c0 85 42 10 00    	mov    $0x104285,%eax
  100b23:	89 c2                	mov    %eax,%edx
  100b25:	c7 c0 40 62 10 00    	mov    $0x106240,%eax
  100b2b:	8d 80 88 00 00 00    	lea    0x88(%eax),%eax
  100b31:	6a 00                	push   $0x0
  100b33:	52                   	push   %edx
  100b34:	6a 01                	push   $0x1
  100b36:	50                   	push   %eax
  100b37:	e8 5c fe ff ff       	call   100998 <setTrap>
  100b3c:	83 c4 10             	add    $0x10,%esp
  100b3f:	c7 c0 89 42 10 00    	mov    $0x104289,%eax
  100b45:	89 c2                	mov    %eax,%edx
  100b47:	c7 c0 40 62 10 00    	mov    $0x106240,%eax
  100b4d:	8d 80 f0 00 00 00    	lea    0xf0(%eax),%eax
  100b53:	6a 00                	push   $0x0
  100b55:	52                   	push   %edx
  100b56:	6a 01                	push   $0x1
  100b58:	50                   	push   %eax
  100b59:	e8 3a fe ff ff       	call   100998 <setTrap>
  100b5e:	83 c4 10             	add    $0x10,%esp
  100b61:	c7 c0 8d 42 10 00    	mov    $0x10428d,%eax
  100b67:	89 c2                	mov    %eax,%edx
  100b69:	c7 c0 40 62 10 00    	mov    $0x106240,%eax
  100b6f:	8d 80 00 01 00 00    	lea    0x100(%eax),%eax
  100b75:	6a 00                	push   $0x0
  100b77:	52                   	push   %edx
  100b78:	6a 01                	push   $0x1
  100b7a:	50                   	push   %eax
  100b7b:	e8 99 fd ff ff       	call   100919 <setIntr>
  100b80:	83 c4 10             	add    $0x10,%esp
  100b83:	c7 c0 93 42 10 00    	mov    $0x104293,%eax
  100b89:	89 c2                	mov    %eax,%edx
  100b8b:	c7 c0 40 62 10 00    	mov    $0x106240,%eax
  100b91:	8d 80 08 01 00 00    	lea    0x108(%eax),%eax
  100b97:	6a 00                	push   $0x0
  100b99:	52                   	push   %edx
  100b9a:	6a 01                	push   $0x1
  100b9c:	50                   	push   %eax
  100b9d:	e8 77 fd ff ff       	call   100919 <setIntr>
  100ba2:	83 c4 10             	add    $0x10,%esp
  100ba5:	c7 c0 99 42 10 00    	mov    $0x104299,%eax
  100bab:	89 c2                	mov    %eax,%edx
  100bad:	c7 c0 40 62 10 00    	mov    $0x106240,%eax
  100bb3:	8d 80 00 04 00 00    	lea    0x400(%eax),%eax
  100bb9:	6a 03                	push   $0x3
  100bbb:	52                   	push   %edx
  100bbc:	6a 01                	push   $0x1
  100bbe:	50                   	push   %eax
  100bbf:	e8 55 fd ff ff       	call   100919 <setIntr>
  100bc4:	83 c4 10             	add    $0x10,%esp
  100bc7:	68 00 08 00 00       	push   $0x800
  100bcc:	c7 c0 40 62 10 00    	mov    $0x106240,%eax
  100bd2:	50                   	push   %eax
  100bd3:	e8 06 fd ff ff       	call   1008de <saveIdt>
  100bd8:	83 c4 08             	add    $0x8,%esp
  100bdb:	90                   	nop
  100bdc:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  100bdf:	c9                   	leave  
  100be0:	c3                   	ret    

00100be1 <enableInterrupt>:
  100be1:	55                   	push   %ebp
  100be2:	89 e5                	mov    %esp,%ebp
  100be4:	e8 5c f8 ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  100be9:	05 17 54 00 00       	add    $0x5417,%eax
  100bee:	fb                   	sti    
  100bef:	90                   	nop
  100bf0:	5d                   	pop    %ebp
  100bf1:	c3                   	ret    

00100bf2 <disableInterrupt>:
  100bf2:	55                   	push   %ebp
  100bf3:	89 e5                	mov    %esp,%ebp
  100bf5:	e8 4b f8 ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  100bfa:	05 06 54 00 00       	add    $0x5406,%eax
  100bff:	fa                   	cli    
  100c00:	90                   	nop
  100c01:	5d                   	pop    %ebp
  100c02:	c3                   	ret    

00100c03 <irqHandle>:
  100c03:	55                   	push   %ebp
  100c04:	89 e5                	mov    %esp,%ebp
  100c06:	56                   	push   %esi
  100c07:	53                   	push   %ebx
  100c08:	83 ec 10             	sub    $0x10,%esp
  100c0b:	e8 25 fc ff ff       	call   100835 <__x86.get_pc_thunk.bx>
  100c10:	81 c3 f0 53 00 00    	add    $0x53f0,%ebx
  100c16:	b8 10 00 00 00       	mov    $0x10,%eax
  100c1b:	8e d8                	mov    %eax,%ds
  100c1d:	c7 c0 44 80 10 00    	mov    $0x108044,%eax
  100c23:	8b 10                	mov    (%eax),%edx
  100c25:	c7 c1 60 84 10 00    	mov    $0x108460,%ecx
  100c2b:	89 d0                	mov    %edx,%eax
  100c2d:	01 c0                	add    %eax,%eax
  100c2f:	01 d0                	add    %edx,%eax
  100c31:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  100c38:	01 d0                	add    %edx,%eax
  100c3a:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  100c41:	01 d0                	add    %edx,%eax
  100c43:	89 c2                	mov    %eax,%edx
  100c45:	c1 e2 04             	shl    $0x4,%edx
  100c48:	01 d0                	add    %edx,%eax
  100c4a:	c1 e0 02             	shl    $0x2,%eax
  100c4d:	01 c8                	add    %ecx,%eax
  100c4f:	05 4c 40 00 00       	add    $0x404c,%eax
  100c54:	8b 00                	mov    (%eax),%eax
  100c56:	89 45 f4             	mov    %eax,-0xc(%ebp)
  100c59:	c7 c0 44 80 10 00    	mov    $0x108044,%eax
  100c5f:	8b 10                	mov    (%eax),%edx
  100c61:	c7 c0 44 80 10 00    	mov    $0x108044,%eax
  100c67:	8b 08                	mov    (%eax),%ecx
  100c69:	c7 c6 60 84 10 00    	mov    $0x108460,%esi
  100c6f:	89 d0                	mov    %edx,%eax
  100c71:	01 c0                	add    %eax,%eax
  100c73:	01 d0                	add    %edx,%eax
  100c75:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  100c7c:	01 d0                	add    %edx,%eax
  100c7e:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  100c85:	01 d0                	add    %edx,%eax
  100c87:	89 c2                	mov    %eax,%edx
  100c89:	c1 e2 04             	shl    $0x4,%edx
  100c8c:	01 d0                	add    %edx,%eax
  100c8e:	c1 e0 02             	shl    $0x2,%eax
  100c91:	01 f0                	add    %esi,%eax
  100c93:	05 4c 40 00 00       	add    $0x404c,%eax
  100c98:	8b 10                	mov    (%eax),%edx
  100c9a:	c7 c6 60 84 10 00    	mov    $0x108460,%esi
  100ca0:	89 c8                	mov    %ecx,%eax
  100ca2:	01 c0                	add    %eax,%eax
  100ca4:	01 c8                	add    %ecx,%eax
  100ca6:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
  100cad:	01 c8                	add    %ecx,%eax
  100caf:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
  100cb6:	01 c8                	add    %ecx,%eax
  100cb8:	89 c1                	mov    %eax,%ecx
  100cba:	c1 e1 04             	shl    $0x4,%ecx
  100cbd:	01 c8                	add    %ecx,%eax
  100cbf:	c1 e0 02             	shl    $0x2,%eax
  100cc2:	01 f0                	add    %esi,%eax
  100cc4:	05 50 40 00 00       	add    $0x4050,%eax
  100cc9:	89 10                	mov    %edx,(%eax)
  100ccb:	c7 c0 44 80 10 00    	mov    $0x108044,%eax
  100cd1:	8b 08                	mov    (%eax),%ecx
  100cd3:	8b 55 08             	mov    0x8(%ebp),%edx
  100cd6:	c7 c6 60 84 10 00    	mov    $0x108460,%esi
  100cdc:	89 c8                	mov    %ecx,%eax
  100cde:	01 c0                	add    %eax,%eax
  100ce0:	01 c8                	add    %ecx,%eax
  100ce2:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
  100ce9:	01 c8                	add    %ecx,%eax
  100ceb:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
  100cf2:	01 c8                	add    %ecx,%eax
  100cf4:	89 c1                	mov    %eax,%ecx
  100cf6:	c1 e1 04             	shl    $0x4,%ecx
  100cf9:	01 c8                	add    %ecx,%eax
  100cfb:	c1 e0 02             	shl    $0x2,%eax
  100cfe:	01 f0                	add    %esi,%eax
  100d00:	05 4c 40 00 00       	add    $0x404c,%eax
  100d05:	89 10                	mov    %edx,(%eax)
  100d07:	8b 45 08             	mov    0x8(%ebp),%eax
  100d0a:	8b 40 30             	mov    0x30(%eax),%eax
  100d0d:	83 f8 21             	cmp    $0x21,%eax
  100d10:	74 3f                	je     100d51 <irqHandle+0x14e>
  100d12:	83 f8 21             	cmp    $0x21,%eax
  100d15:	77 0c                	ja     100d23 <irqHandle+0x120>
  100d17:	83 f8 0d             	cmp    $0xd,%eax
  100d1a:	74 15                	je     100d31 <irqHandle+0x12e>
  100d1c:	83 f8 20             	cmp    $0x20,%eax
  100d1f:	74 20                	je     100d41 <irqHandle+0x13e>
  100d21:	eb 4e                	jmp    100d71 <irqHandle+0x16e>
  100d23:	3d 80 00 00 00       	cmp    $0x80,%eax
  100d28:	74 37                	je     100d61 <irqHandle+0x15e>
  100d2a:	83 f8 ff             	cmp    $0xffffffff,%eax
  100d2d:	74 58                	je     100d87 <irqHandle+0x184>
  100d2f:	eb 40                	jmp    100d71 <irqHandle+0x16e>
  100d31:	83 ec 0c             	sub    $0xc,%esp
  100d34:	ff 75 08             	pushl  0x8(%ebp)
  100d37:	e8 48 1b 00 00       	call   102884 <GProtectFaultHandle>
  100d3c:	83 c4 10             	add    $0x10,%esp
  100d3f:	eb 47                	jmp    100d88 <irqHandle+0x185>
  100d41:	83 ec 0c             	sub    $0xc,%esp
  100d44:	ff 75 08             	pushl  0x8(%ebp)
  100d47:	e8 32 01 00 00       	call   100e7e <timerHandle>
  100d4c:	83 c4 10             	add    $0x10,%esp
  100d4f:	eb 37                	jmp    100d88 <irqHandle+0x185>
  100d51:	83 ec 0c             	sub    $0xc,%esp
  100d54:	ff 75 08             	pushl  0x8(%ebp)
  100d57:	e8 8b 06 00 00       	call   1013e7 <keyboardHandle>
  100d5c:	83 c4 10             	add    $0x10,%esp
  100d5f:	eb 27                	jmp    100d88 <irqHandle+0x185>
  100d61:	83 ec 0c             	sub    $0xc,%esp
  100d64:	ff 75 08             	pushl  0x8(%ebp)
  100d67:	e8 61 00 00 00       	call   100dcd <syscallHandle>
  100d6c:	83 c4 10             	add    $0x10,%esp
  100d6f:	eb 17                	jmp    100d88 <irqHandle+0x185>
  100d71:	83 ec 08             	sub    $0x8,%esp
  100d74:	6a 6a                	push   $0x6a
  100d76:	8d 83 c0 e2 ff ff    	lea    -0x1d40(%ebx),%eax
  100d7c:	50                   	push   %eax
  100d7d:	e8 0f 32 00 00       	call   103f91 <abort>
  100d82:	83 c4 10             	add    $0x10,%esp
  100d85:	eb 01                	jmp    100d88 <irqHandle+0x185>
  100d87:	90                   	nop
  100d88:	c7 c0 44 80 10 00    	mov    $0x108044,%eax
  100d8e:	8b 10                	mov    (%eax),%edx
  100d90:	c7 c1 60 84 10 00    	mov    $0x108460,%ecx
  100d96:	89 d0                	mov    %edx,%eax
  100d98:	01 c0                	add    %eax,%eax
  100d9a:	01 d0                	add    %edx,%eax
  100d9c:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  100da3:	01 d0                	add    %edx,%eax
  100da5:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  100dac:	01 d0                	add    %edx,%eax
  100dae:	89 c2                	mov    %eax,%edx
  100db0:	c1 e2 04             	shl    $0x4,%edx
  100db3:	01 d0                	add    %edx,%eax
  100db5:	c1 e0 02             	shl    $0x2,%eax
  100db8:	01 c8                	add    %ecx,%eax
  100dba:	8d 90 4c 40 00 00    	lea    0x404c(%eax),%edx
  100dc0:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100dc3:	89 02                	mov    %eax,(%edx)
  100dc5:	90                   	nop
  100dc6:	8d 65 f8             	lea    -0x8(%ebp),%esp
  100dc9:	5b                   	pop    %ebx
  100dca:	5e                   	pop    %esi
  100dcb:	5d                   	pop    %ebp
  100dcc:	c3                   	ret    

00100dcd <syscallHandle>:
  100dcd:	55                   	push   %ebp
  100dce:	89 e5                	mov    %esp,%ebp
  100dd0:	83 ec 08             	sub    $0x8,%esp
  100dd3:	e8 6d f6 ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  100dd8:	05 28 52 00 00       	add    $0x5228,%eax
  100ddd:	8b 55 08             	mov    0x8(%ebp),%edx
  100de0:	8b 52 2c             	mov    0x2c(%edx),%edx
  100de3:	83 fa 07             	cmp    $0x7,%edx
  100de6:	0f 87 8e 00 00 00    	ja     100e7a <.L23+0x10>
  100dec:	c1 e2 02             	shl    $0x2,%edx
  100def:	8b 94 02 d4 e2 ff ff 	mov    -0x1d2c(%edx,%eax,1),%edx
  100df6:	01 d0                	add    %edx,%eax
  100df8:	ff e0                	jmp    *%eax

00100dfa <.L15>:
  100dfa:	83 ec 0c             	sub    $0xc,%esp
  100dfd:	ff 75 08             	pushl  0x8(%ebp)
  100e00:	e8 cd 06 00 00       	call   1014d2 <syscallWrite>
  100e05:	83 c4 10             	add    $0x10,%esp
  100e08:	eb 71                	jmp    100e7b <.L23+0x11>

00100e0a <.L21>:
  100e0a:	83 ec 0c             	sub    $0xc,%esp
  100e0d:	ff 75 08             	pushl  0x8(%ebp)
  100e10:	e8 c3 08 00 00       	call   1016d8 <syscallRead>
  100e15:	83 c4 10             	add    $0x10,%esp
  100e18:	eb 61                	jmp    100e7b <.L23+0x11>

00100e1a <.L17>:
  100e1a:	83 ec 0c             	sub    $0xc,%esp
  100e1d:	ff 75 08             	pushl  0x8(%ebp)
  100e20:	e8 1c 0c 00 00       	call   101a41 <syscallFork>
  100e25:	83 c4 10             	add    $0x10,%esp
  100e28:	eb 51                	jmp    100e7b <.L23+0x11>

00100e2a <.L18>:
  100e2a:	83 ec 0c             	sub    $0xc,%esp
  100e2d:	ff 75 08             	pushl  0x8(%ebp)
  100e30:	e8 81 17 00 00       	call   1025b6 <syscallExec>
  100e35:	83 c4 10             	add    $0x10,%esp
  100e38:	eb 41                	jmp    100e7b <.L23+0x11>

00100e3a <.L19>:
  100e3a:	83 ec 0c             	sub    $0xc,%esp
  100e3d:	ff 75 08             	pushl  0x8(%ebp)
  100e40:	e8 4d 18 00 00       	call   102692 <syscallSleep>
  100e45:	83 c4 10             	add    $0x10,%esp
  100e48:	eb 31                	jmp    100e7b <.L23+0x11>

00100e4a <.L20>:
  100e4a:	83 ec 0c             	sub    $0xc,%esp
  100e4d:	ff 75 08             	pushl  0x8(%ebp)
  100e50:	e8 df 18 00 00       	call   102734 <syscallExit>
  100e55:	83 c4 10             	add    $0x10,%esp
  100e58:	eb 21                	jmp    100e7b <.L23+0x11>

00100e5a <.L22>:
  100e5a:	83 ec 0c             	sub    $0xc,%esp
  100e5d:	ff 75 08             	pushl  0x8(%ebp)
  100e60:	e8 1e 19 00 00       	call   102783 <syscallSem>
  100e65:	83 c4 10             	add    $0x10,%esp
  100e68:	eb 11                	jmp    100e7b <.L23+0x11>

00100e6a <.L23>:
  100e6a:	83 ec 0c             	sub    $0xc,%esp
  100e6d:	ff 75 08             	pushl  0x8(%ebp)
  100e70:	e8 bc 19 00 00       	call   102831 <syscallGetPid>
  100e75:	83 c4 10             	add    $0x10,%esp
  100e78:	eb 01                	jmp    100e7b <.L23+0x11>
  100e7a:	90                   	nop
  100e7b:	90                   	nop
  100e7c:	c9                   	leave  
  100e7d:	c3                   	ret    

00100e7e <timerHandle>:
  100e7e:	55                   	push   %ebp
  100e7f:	89 e5                	mov    %esp,%ebp
  100e81:	56                   	push   %esi
  100e82:	53                   	push   %ebx
  100e83:	83 ec 10             	sub    $0x10,%esp
  100e86:	e8 aa f9 ff ff       	call   100835 <__x86.get_pc_thunk.bx>
  100e8b:	81 c3 75 51 00 00    	add    $0x5175,%ebx
  100e91:	c7 c0 44 80 10 00    	mov    $0x108044,%eax
  100e97:	8b 00                	mov    (%eax),%eax
  100e99:	40                   	inc    %eax
  100e9a:	b9 09 00 00 00       	mov    $0x9,%ecx
  100e9f:	99                   	cltd   
  100ea0:	f7 f9                	idiv   %ecx
  100ea2:	89 55 f4             	mov    %edx,-0xc(%ebp)
  100ea5:	e9 27 01 00 00       	jmp    100fd1 <timerHandle+0x153>
  100eaa:	c7 c1 60 84 10 00    	mov    $0x108460,%ecx
  100eb0:	8b 55 f4             	mov    -0xc(%ebp),%edx
  100eb3:	89 d0                	mov    %edx,%eax
  100eb5:	01 c0                	add    %eax,%eax
  100eb7:	01 d0                	add    %edx,%eax
  100eb9:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  100ec0:	01 d0                	add    %edx,%eax
  100ec2:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  100ec9:	01 d0                	add    %edx,%eax
  100ecb:	89 c2                	mov    %eax,%edx
  100ecd:	c1 e2 04             	shl    $0x4,%edx
  100ed0:	01 d0                	add    %edx,%eax
  100ed2:	c1 e0 02             	shl    $0x2,%eax
  100ed5:	01 c8                	add    %ecx,%eax
  100ed7:	05 54 40 00 00       	add    $0x4054,%eax
  100edc:	8b 00                	mov    (%eax),%eax
  100ede:	83 f8 02             	cmp    $0x2,%eax
  100ee1:	0f 85 db 00 00 00    	jne    100fc2 <timerHandle+0x144>
  100ee7:	c7 c1 60 84 10 00    	mov    $0x108460,%ecx
  100eed:	8b 55 f4             	mov    -0xc(%ebp),%edx
  100ef0:	89 d0                	mov    %edx,%eax
  100ef2:	01 c0                	add    %eax,%eax
  100ef4:	01 d0                	add    %edx,%eax
  100ef6:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  100efd:	01 d0                	add    %edx,%eax
  100eff:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  100f06:	01 d0                	add    %edx,%eax
  100f08:	89 c2                	mov    %eax,%edx
  100f0a:	c1 e2 04             	shl    $0x4,%edx
  100f0d:	01 d0                	add    %edx,%eax
  100f0f:	c1 e0 02             	shl    $0x2,%eax
  100f12:	01 c8                	add    %ecx,%eax
  100f14:	05 5c 40 00 00       	add    $0x405c,%eax
  100f19:	8b 00                	mov    (%eax),%eax
  100f1b:	8d 48 ff             	lea    -0x1(%eax),%ecx
  100f1e:	c7 c6 60 84 10 00    	mov    $0x108460,%esi
  100f24:	8b 55 f4             	mov    -0xc(%ebp),%edx
  100f27:	89 d0                	mov    %edx,%eax
  100f29:	01 c0                	add    %eax,%eax
  100f2b:	01 d0                	add    %edx,%eax
  100f2d:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  100f34:	01 d0                	add    %edx,%eax
  100f36:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  100f3d:	01 d0                	add    %edx,%eax
  100f3f:	89 c2                	mov    %eax,%edx
  100f41:	c1 e2 04             	shl    $0x4,%edx
  100f44:	01 d0                	add    %edx,%eax
  100f46:	c1 e0 02             	shl    $0x2,%eax
  100f49:	01 f0                	add    %esi,%eax
  100f4b:	05 5c 40 00 00       	add    $0x405c,%eax
  100f50:	89 08                	mov    %ecx,(%eax)
  100f52:	c7 c1 60 84 10 00    	mov    $0x108460,%ecx
  100f58:	8b 55 f4             	mov    -0xc(%ebp),%edx
  100f5b:	89 d0                	mov    %edx,%eax
  100f5d:	01 c0                	add    %eax,%eax
  100f5f:	01 d0                	add    %edx,%eax
  100f61:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  100f68:	01 d0                	add    %edx,%eax
  100f6a:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  100f71:	01 d0                	add    %edx,%eax
  100f73:	89 c2                	mov    %eax,%edx
  100f75:	c1 e2 04             	shl    $0x4,%edx
  100f78:	01 d0                	add    %edx,%eax
  100f7a:	c1 e0 02             	shl    $0x2,%eax
  100f7d:	01 c8                	add    %ecx,%eax
  100f7f:	05 5c 40 00 00       	add    $0x405c,%eax
  100f84:	8b 00                	mov    (%eax),%eax
  100f86:	85 c0                	test   %eax,%eax
  100f88:	75 38                	jne    100fc2 <timerHandle+0x144>
  100f8a:	c7 c1 60 84 10 00    	mov    $0x108460,%ecx
  100f90:	8b 55 f4             	mov    -0xc(%ebp),%edx
  100f93:	89 d0                	mov    %edx,%eax
  100f95:	01 c0                	add    %eax,%eax
  100f97:	01 d0                	add    %edx,%eax
  100f99:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  100fa0:	01 d0                	add    %edx,%eax
  100fa2:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  100fa9:	01 d0                	add    %edx,%eax
  100fab:	89 c2                	mov    %eax,%edx
  100fad:	c1 e2 04             	shl    $0x4,%edx
  100fb0:	01 d0                	add    %edx,%eax
  100fb2:	c1 e0 02             	shl    $0x2,%eax
  100fb5:	01 c8                	add    %ecx,%eax
  100fb7:	05 54 40 00 00       	add    $0x4054,%eax
  100fbc:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
  100fc2:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100fc5:	40                   	inc    %eax
  100fc6:	b9 09 00 00 00       	mov    $0x9,%ecx
  100fcb:	99                   	cltd   
  100fcc:	f7 f9                	idiv   %ecx
  100fce:	89 55 f4             	mov    %edx,-0xc(%ebp)
  100fd1:	c7 c0 44 80 10 00    	mov    $0x108044,%eax
  100fd7:	8b 00                	mov    (%eax),%eax
  100fd9:	39 45 f4             	cmp    %eax,-0xc(%ebp)
  100fdc:	0f 85 c8 fe ff ff    	jne    100eaa <timerHandle+0x2c>
  100fe2:	c7 c0 44 80 10 00    	mov    $0x108044,%eax
  100fe8:	8b 10                	mov    (%eax),%edx
  100fea:	c7 c1 60 84 10 00    	mov    $0x108460,%ecx
  100ff0:	89 d0                	mov    %edx,%eax
  100ff2:	01 c0                	add    %eax,%eax
  100ff4:	01 d0                	add    %edx,%eax
  100ff6:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  100ffd:	01 d0                	add    %edx,%eax
  100fff:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  101006:	01 d0                	add    %edx,%eax
  101008:	89 c2                	mov    %eax,%edx
  10100a:	c1 e2 04             	shl    $0x4,%edx
  10100d:	01 d0                	add    %edx,%eax
  10100f:	c1 e0 02             	shl    $0x2,%eax
  101012:	01 c8                	add    %ecx,%eax
  101014:	05 54 40 00 00       	add    $0x4054,%eax
  101019:	8b 00                	mov    (%eax),%eax
  10101b:	83 f8 01             	cmp    $0x1,%eax
  10101e:	0f 85 b0 00 00 00    	jne    1010d4 <timerHandle+0x256>
  101024:	c7 c0 44 80 10 00    	mov    $0x108044,%eax
  10102a:	8b 10                	mov    (%eax),%edx
  10102c:	c7 c1 60 84 10 00    	mov    $0x108460,%ecx
  101032:	89 d0                	mov    %edx,%eax
  101034:	01 c0                	add    %eax,%eax
  101036:	01 d0                	add    %edx,%eax
  101038:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  10103f:	01 d0                	add    %edx,%eax
  101041:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  101048:	01 d0                	add    %edx,%eax
  10104a:	89 c2                	mov    %eax,%edx
  10104c:	c1 e2 04             	shl    $0x4,%edx
  10104f:	01 d0                	add    %edx,%eax
  101051:	c1 e0 02             	shl    $0x2,%eax
  101054:	01 c8                	add    %ecx,%eax
  101056:	05 58 40 00 00       	add    $0x4058,%eax
  10105b:	8b 00                	mov    (%eax),%eax
  10105d:	83 f8 10             	cmp    $0x10,%eax
  101060:	74 72                	je     1010d4 <timerHandle+0x256>
  101062:	c7 c0 44 80 10 00    	mov    $0x108044,%eax
  101068:	8b 10                	mov    (%eax),%edx
  10106a:	c7 c1 60 84 10 00    	mov    $0x108460,%ecx
  101070:	89 d0                	mov    %edx,%eax
  101072:	01 c0                	add    %eax,%eax
  101074:	01 d0                	add    %edx,%eax
  101076:	8d 34 c5 00 00 00 00 	lea    0x0(,%eax,8),%esi
  10107d:	01 f0                	add    %esi,%eax
  10107f:	8d 34 c5 00 00 00 00 	lea    0x0(,%eax,8),%esi
  101086:	01 f0                	add    %esi,%eax
  101088:	89 c6                	mov    %eax,%esi
  10108a:	c1 e6 04             	shl    $0x4,%esi
  10108d:	01 f0                	add    %esi,%eax
  10108f:	c1 e0 02             	shl    $0x2,%eax
  101092:	01 c8                	add    %ecx,%eax
  101094:	05 58 40 00 00       	add    $0x4058,%eax
  101099:	8b 00                	mov    (%eax),%eax
  10109b:	8d 48 01             	lea    0x1(%eax),%ecx
  10109e:	c7 c3 60 84 10 00    	mov    $0x108460,%ebx
  1010a4:	89 d0                	mov    %edx,%eax
  1010a6:	01 c0                	add    %eax,%eax
  1010a8:	01 d0                	add    %edx,%eax
  1010aa:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  1010b1:	01 d0                	add    %edx,%eax
  1010b3:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  1010ba:	01 d0                	add    %edx,%eax
  1010bc:	89 c2                	mov    %eax,%edx
  1010be:	c1 e2 04             	shl    $0x4,%edx
  1010c1:	01 d0                	add    %edx,%eax
  1010c3:	c1 e0 02             	shl    $0x2,%eax
  1010c6:	01 d8                	add    %ebx,%eax
  1010c8:	05 58 40 00 00       	add    $0x4058,%eax
  1010cd:	89 08                	mov    %ecx,(%eax)
  1010cf:	e9 0c 03 00 00       	jmp    1013e0 <timerHandle+0x562>
  1010d4:	c7 c0 44 80 10 00    	mov    $0x108044,%eax
  1010da:	8b 10                	mov    (%eax),%edx
  1010dc:	c7 c1 60 84 10 00    	mov    $0x108460,%ecx
  1010e2:	89 d0                	mov    %edx,%eax
  1010e4:	01 c0                	add    %eax,%eax
  1010e6:	01 d0                	add    %edx,%eax
  1010e8:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  1010ef:	01 d0                	add    %edx,%eax
  1010f1:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  1010f8:	01 d0                	add    %edx,%eax
  1010fa:	89 c2                	mov    %eax,%edx
  1010fc:	c1 e2 04             	shl    $0x4,%edx
  1010ff:	01 d0                	add    %edx,%eax
  101101:	c1 e0 02             	shl    $0x2,%eax
  101104:	01 c8                	add    %ecx,%eax
  101106:	05 54 40 00 00       	add    $0x4054,%eax
  10110b:	8b 00                	mov    (%eax),%eax
  10110d:	83 f8 01             	cmp    $0x1,%eax
  101110:	75 7a                	jne    10118c <timerHandle+0x30e>
  101112:	c7 c0 44 80 10 00    	mov    $0x108044,%eax
  101118:	8b 10                	mov    (%eax),%edx
  10111a:	c7 c1 60 84 10 00    	mov    $0x108460,%ecx
  101120:	89 d0                	mov    %edx,%eax
  101122:	01 c0                	add    %eax,%eax
  101124:	01 d0                	add    %edx,%eax
  101126:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  10112d:	01 d0                	add    %edx,%eax
  10112f:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  101136:	01 d0                	add    %edx,%eax
  101138:	89 c2                	mov    %eax,%edx
  10113a:	c1 e2 04             	shl    $0x4,%edx
  10113d:	01 d0                	add    %edx,%eax
  10113f:	c1 e0 02             	shl    $0x2,%eax
  101142:	01 c8                	add    %ecx,%eax
  101144:	05 54 40 00 00       	add    $0x4054,%eax
  101149:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
  10114f:	c7 c0 44 80 10 00    	mov    $0x108044,%eax
  101155:	8b 10                	mov    (%eax),%edx
  101157:	c7 c1 60 84 10 00    	mov    $0x108460,%ecx
  10115d:	89 d0                	mov    %edx,%eax
  10115f:	01 c0                	add    %eax,%eax
  101161:	01 d0                	add    %edx,%eax
  101163:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  10116a:	01 d0                	add    %edx,%eax
  10116c:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  101173:	01 d0                	add    %edx,%eax
  101175:	89 c2                	mov    %eax,%edx
  101177:	c1 e2 04             	shl    $0x4,%edx
  10117a:	01 d0                	add    %edx,%eax
  10117c:	c1 e0 02             	shl    $0x2,%eax
  10117f:	01 c8                	add    %ecx,%eax
  101181:	05 58 40 00 00       	add    $0x4058,%eax
  101186:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
  10118c:	c7 c0 44 80 10 00    	mov    $0x108044,%eax
  101192:	8b 00                	mov    (%eax),%eax
  101194:	40                   	inc    %eax
  101195:	b9 09 00 00 00       	mov    $0x9,%ecx
  10119a:	99                   	cltd   
  10119b:	f7 f9                	idiv   %ecx
  10119d:	89 55 f4             	mov    %edx,-0xc(%ebp)
  1011a0:	eb 4d                	jmp    1011ef <timerHandle+0x371>
  1011a2:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
  1011a6:	74 38                	je     1011e0 <timerHandle+0x362>
  1011a8:	c7 c1 60 84 10 00    	mov    $0x108460,%ecx
  1011ae:	8b 55 f4             	mov    -0xc(%ebp),%edx
  1011b1:	89 d0                	mov    %edx,%eax
  1011b3:	01 c0                	add    %eax,%eax
  1011b5:	01 d0                	add    %edx,%eax
  1011b7:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  1011be:	01 d0                	add    %edx,%eax
  1011c0:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  1011c7:	01 d0                	add    %edx,%eax
  1011c9:	89 c2                	mov    %eax,%edx
  1011cb:	c1 e2 04             	shl    $0x4,%edx
  1011ce:	01 d0                	add    %edx,%eax
  1011d0:	c1 e0 02             	shl    $0x2,%eax
  1011d3:	01 c8                	add    %ecx,%eax
  1011d5:	05 54 40 00 00       	add    $0x4054,%eax
  1011da:	8b 00                	mov    (%eax),%eax
  1011dc:	85 c0                	test   %eax,%eax
  1011de:	74 1e                	je     1011fe <timerHandle+0x380>
  1011e0:	8b 45 f4             	mov    -0xc(%ebp),%eax
  1011e3:	40                   	inc    %eax
  1011e4:	b9 09 00 00 00       	mov    $0x9,%ecx
  1011e9:	99                   	cltd   
  1011ea:	f7 f9                	idiv   %ecx
  1011ec:	89 55 f4             	mov    %edx,-0xc(%ebp)
  1011ef:	c7 c0 44 80 10 00    	mov    $0x108044,%eax
  1011f5:	8b 00                	mov    (%eax),%eax
  1011f7:	39 45 f4             	cmp    %eax,-0xc(%ebp)
  1011fa:	75 a6                	jne    1011a2 <timerHandle+0x324>
  1011fc:	eb 01                	jmp    1011ff <timerHandle+0x381>
  1011fe:	90                   	nop
  1011ff:	c7 c1 60 84 10 00    	mov    $0x108460,%ecx
  101205:	8b 55 f4             	mov    -0xc(%ebp),%edx
  101208:	89 d0                	mov    %edx,%eax
  10120a:	01 c0                	add    %eax,%eax
  10120c:	01 d0                	add    %edx,%eax
  10120e:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  101215:	01 d0                	add    %edx,%eax
  101217:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  10121e:	01 d0                	add    %edx,%eax
  101220:	89 c2                	mov    %eax,%edx
  101222:	c1 e2 04             	shl    $0x4,%edx
  101225:	01 d0                	add    %edx,%eax
  101227:	c1 e0 02             	shl    $0x2,%eax
  10122a:	01 c8                	add    %ecx,%eax
  10122c:	05 54 40 00 00       	add    $0x4054,%eax
  101231:	8b 00                	mov    (%eax),%eax
  101233:	85 c0                	test   %eax,%eax
  101235:	74 07                	je     10123e <timerHandle+0x3c0>
  101237:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  10123e:	c7 c0 44 80 10 00    	mov    $0x108044,%eax
  101244:	8b 55 f4             	mov    -0xc(%ebp),%edx
  101247:	89 10                	mov    %edx,(%eax)
  101249:	c7 c0 44 80 10 00    	mov    $0x108044,%eax
  10124f:	8b 00                	mov    (%eax),%eax
  101251:	83 c0 30             	add    $0x30,%eax
  101254:	0f be c0             	movsbl %al,%eax
  101257:	83 ec 0c             	sub    $0xc,%esp
  10125a:	50                   	push   %eax
  10125b:	e8 4f 28 00 00       	call   103aaf <putChar>
  101260:	83 c4 10             	add    $0x10,%esp
  101263:	c7 c0 44 80 10 00    	mov    $0x108044,%eax
  101269:	8b 10                	mov    (%eax),%edx
  10126b:	c7 c1 60 84 10 00    	mov    $0x108460,%ecx
  101271:	89 d0                	mov    %edx,%eax
  101273:	01 c0                	add    %eax,%eax
  101275:	01 d0                	add    %edx,%eax
  101277:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  10127e:	01 d0                	add    %edx,%eax
  101280:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  101287:	01 d0                	add    %edx,%eax
  101289:	89 c2                	mov    %eax,%edx
  10128b:	c1 e2 04             	shl    $0x4,%edx
  10128e:	01 d0                	add    %edx,%eax
  101290:	c1 e0 02             	shl    $0x2,%eax
  101293:	01 c8                	add    %ecx,%eax
  101295:	05 54 40 00 00       	add    $0x4054,%eax
  10129a:	c7 00 01 00 00 00    	movl   $0x1,(%eax)
  1012a0:	c7 c0 44 80 10 00    	mov    $0x108044,%eax
  1012a6:	8b 10                	mov    (%eax),%edx
  1012a8:	c7 c1 60 84 10 00    	mov    $0x108460,%ecx
  1012ae:	89 d0                	mov    %edx,%eax
  1012b0:	01 c0                	add    %eax,%eax
  1012b2:	01 d0                	add    %edx,%eax
  1012b4:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  1012bb:	01 d0                	add    %edx,%eax
  1012bd:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  1012c4:	01 d0                	add    %edx,%eax
  1012c6:	89 c2                	mov    %eax,%edx
  1012c8:	c1 e2 04             	shl    $0x4,%edx
  1012cb:	01 d0                	add    %edx,%eax
  1012cd:	c1 e0 02             	shl    $0x2,%eax
  1012d0:	01 c8                	add    %ecx,%eax
  1012d2:	05 58 40 00 00       	add    $0x4058,%eax
  1012d7:	c7 00 01 00 00 00    	movl   $0x1,(%eax)
  1012dd:	c7 c0 44 80 10 00    	mov    $0x108044,%eax
  1012e3:	8b 10                	mov    (%eax),%edx
  1012e5:	c7 c1 60 84 10 00    	mov    $0x108460,%ecx
  1012eb:	89 d0                	mov    %edx,%eax
  1012ed:	01 c0                	add    %eax,%eax
  1012ef:	01 d0                	add    %edx,%eax
  1012f1:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  1012f8:	01 d0                	add    %edx,%eax
  1012fa:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  101301:	01 d0                	add    %edx,%eax
  101303:	89 c2                	mov    %eax,%edx
  101305:	c1 e2 04             	shl    $0x4,%edx
  101308:	01 d0                	add    %edx,%eax
  10130a:	c1 e0 02             	shl    $0x2,%eax
  10130d:	01 c8                	add    %ecx,%eax
  10130f:	05 4c 40 00 00       	add    $0x404c,%eax
  101314:	8b 00                	mov    (%eax),%eax
  101316:	89 45 f0             	mov    %eax,-0x10(%ebp)
  101319:	c7 c0 44 80 10 00    	mov    $0x108044,%eax
  10131f:	8b 10                	mov    (%eax),%edx
  101321:	c7 c0 44 80 10 00    	mov    $0x108044,%eax
  101327:	8b 08                	mov    (%eax),%ecx
  101329:	c7 c6 60 84 10 00    	mov    $0x108460,%esi
  10132f:	89 d0                	mov    %edx,%eax
  101331:	01 c0                	add    %eax,%eax
  101333:	01 d0                	add    %edx,%eax
  101335:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  10133c:	01 d0                	add    %edx,%eax
  10133e:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  101345:	01 d0                	add    %edx,%eax
  101347:	89 c2                	mov    %eax,%edx
  101349:	c1 e2 04             	shl    $0x4,%edx
  10134c:	01 d0                	add    %edx,%eax
  10134e:	c1 e0 02             	shl    $0x2,%eax
  101351:	01 f0                	add    %esi,%eax
  101353:	05 50 40 00 00       	add    $0x4050,%eax
  101358:	8b 10                	mov    (%eax),%edx
  10135a:	c7 c6 60 84 10 00    	mov    $0x108460,%esi
  101360:	89 c8                	mov    %ecx,%eax
  101362:	01 c0                	add    %eax,%eax
  101364:	01 c8                	add    %ecx,%eax
  101366:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
  10136d:	01 c8                	add    %ecx,%eax
  10136f:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
  101376:	01 c8                	add    %ecx,%eax
  101378:	89 c1                	mov    %eax,%ecx
  10137a:	c1 e1 04             	shl    $0x4,%ecx
  10137d:	01 c8                	add    %ecx,%eax
  10137f:	c1 e0 02             	shl    $0x2,%eax
  101382:	01 f0                	add    %esi,%eax
  101384:	05 4c 40 00 00       	add    $0x404c,%eax
  101389:	89 10                	mov    %edx,(%eax)
  10138b:	c7 c0 44 80 10 00    	mov    $0x108044,%eax
  101391:	8b 10                	mov    (%eax),%edx
  101393:	89 d0                	mov    %edx,%eax
  101395:	01 c0                	add    %eax,%eax
  101397:	01 d0                	add    %edx,%eax
  101399:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  1013a0:	01 d0                	add    %edx,%eax
  1013a2:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  1013a9:	01 d0                	add    %edx,%eax
  1013ab:	89 c2                	mov    %eax,%edx
  1013ad:	c1 e2 04             	shl    $0x4,%edx
  1013b0:	01 d0                	add    %edx,%eax
  1013b2:	c1 e0 02             	shl    $0x2,%eax
  1013b5:	8d 90 40 40 00 00    	lea    0x4040(%eax),%edx
  1013bb:	c7 c0 60 84 10 00    	mov    $0x108460,%eax
  1013c1:	01 d0                	add    %edx,%eax
  1013c3:	83 c0 0c             	add    $0xc,%eax
  1013c6:	89 c2                	mov    %eax,%edx
  1013c8:	c7 c0 e0 7f 10 00    	mov    $0x107fe0,%eax
  1013ce:	89 50 04             	mov    %edx,0x4(%eax)
  1013d1:	8b 65 f0             	mov    -0x10(%ebp),%esp
  1013d4:	0f a9                	pop    %gs
  1013d6:	0f a1                	pop    %fs
  1013d8:	07                   	pop    %es
  1013d9:	1f                   	pop    %ds
  1013da:	61                   	popa   
  1013db:	83 c4 08             	add    $0x8,%esp
  1013de:	cf                   	iret   
  1013df:	90                   	nop
  1013e0:	8d 65 f8             	lea    -0x8(%ebp),%esp
  1013e3:	5b                   	pop    %ebx
  1013e4:	5e                   	pop    %esi
  1013e5:	5d                   	pop    %ebp
  1013e6:	c3                   	ret    

001013e7 <keyboardHandle>:
  1013e7:	55                   	push   %ebp
  1013e8:	89 e5                	mov    %esp,%ebp
  1013ea:	53                   	push   %ebx
  1013eb:	83 ec 14             	sub    $0x14,%esp
  1013ee:	e8 42 f4 ff ff       	call   100835 <__x86.get_pc_thunk.bx>
  1013f3:	81 c3 0d 4c 00 00    	add    $0x4c0d,%ebx
  1013f9:	e8 25 18 00 00       	call   102c23 <getKeyCode>
  1013fe:	89 45 f4             	mov    %eax,-0xc(%ebp)
  101401:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
  101405:	75 12                	jne    101419 <keyboardHandle+0x32>
  101407:	c7 c0 80 7e 10 00    	mov    $0x107e80,%eax
  10140d:	c7 40 14 00 00 00 00 	movl   $0x0,0x14(%eax)
  101414:	e9 b4 00 00 00       	jmp    1014cd <keyboardHandle+0xe6>
  101419:	83 ec 0c             	sub    $0xc,%esp
  10141c:	ff 75 f4             	pushl  -0xc(%ebp)
  10141f:	e8 a3 18 00 00       	call   102cc7 <getChar>
  101424:	83 c4 10             	add    $0x10,%esp
  101427:	88 c1                	mov    %al,%cl
  101429:	c7 c0 40 7a 10 00    	mov    $0x107a40,%eax
  10142f:	8b 10                	mov    (%eax),%edx
  101431:	0f be c9             	movsbl %cl,%ecx
  101434:	c7 c0 60 7a 10 00    	mov    $0x107a60,%eax
  10143a:	89 0c 90             	mov    %ecx,(%eax,%edx,4)
  10143d:	c7 c0 40 7a 10 00    	mov    $0x107a40,%eax
  101443:	8b 00                	mov    (%eax),%eax
  101445:	40                   	inc    %eax
  101446:	25 ff 00 00 80       	and    $0x800000ff,%eax
  10144b:	85 c0                	test   %eax,%eax
  10144d:	79 07                	jns    101456 <keyboardHandle+0x6f>
  10144f:	48                   	dec    %eax
  101450:	0d 00 ff ff ff       	or     $0xffffff00,%eax
  101455:	40                   	inc    %eax
  101456:	89 c2                	mov    %eax,%edx
  101458:	c7 c0 40 7a 10 00    	mov    $0x107a40,%eax
  10145e:	89 10                	mov    %edx,(%eax)
  101460:	c7 c0 80 7e 10 00    	mov    $0x107e80,%eax
  101466:	8b 40 1c             	mov    0x1c(%eax),%eax
  101469:	2d 84 40 00 00       	sub    $0x4084,%eax
  10146e:	89 83 28 01 00 00    	mov    %eax,0x128(%ebx)
  101474:	c7 c0 80 7e 10 00    	mov    $0x107e80,%eax
  10147a:	8b 40 1c             	mov    0x1c(%eax),%eax
  10147d:	8b 50 04             	mov    0x4(%eax),%edx
  101480:	c7 c0 80 7e 10 00    	mov    $0x107e80,%eax
  101486:	89 50 1c             	mov    %edx,0x1c(%eax)
  101489:	c7 c0 80 7e 10 00    	mov    $0x107e80,%eax
  10148f:	8b 40 1c             	mov    0x1c(%eax),%eax
  101492:	c7 c2 80 7e 10 00    	mov    $0x107e80,%edx
  101498:	8d 52 18             	lea    0x18(%edx),%edx
  10149b:	89 10                	mov    %edx,(%eax)
  10149d:	8b 83 28 01 00 00    	mov    0x128(%ebx),%eax
  1014a3:	8b 80 60 40 00 00    	mov    0x4060(%eax),%eax
  1014a9:	85 c0                	test   %eax,%eax
  1014ab:	74 10                	je     1014bd <keyboardHandle+0xd6>
  1014ad:	8b 83 28 01 00 00    	mov    0x128(%ebx),%eax
  1014b3:	c7 80 54 40 00 00 00 	movl   $0x0,0x4054(%eax)
  1014ba:	00 00 00 
  1014bd:	c7 c0 80 7e 10 00    	mov    $0x107e80,%eax
  1014c3:	c7 40 14 01 00 00 00 	movl   $0x1,0x14(%eax)
  1014ca:	cd 20                	int    $0x20
  1014cc:	90                   	nop
  1014cd:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  1014d0:	c9                   	leave  
  1014d1:	c3                   	ret    

001014d2 <syscallWrite>:
  1014d2:	55                   	push   %ebp
  1014d3:	89 e5                	mov    %esp,%ebp
  1014d5:	83 ec 08             	sub    $0x8,%esp
  1014d8:	e8 68 ef ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  1014dd:	05 23 4b 00 00       	add    $0x4b23,%eax
  1014e2:	8b 55 08             	mov    0x8(%ebp),%edx
  1014e5:	8b 52 28             	mov    0x28(%edx),%edx
  1014e8:	85 d2                	test   %edx,%edx
  1014ea:	74 07                	je     1014f3 <syscallWrite+0x21>
  1014ec:	83 fa 03             	cmp    $0x3,%edx
  1014ef:	74 1f                	je     101510 <syscallWrite+0x3e>
  1014f1:	eb 3f                	jmp    101532 <syscallWrite+0x60>
  1014f3:	c7 c0 80 7e 10 00    	mov    $0x107e80,%eax
  1014f9:	8b 00                	mov    (%eax),%eax
  1014fb:	83 f8 01             	cmp    $0x1,%eax
  1014fe:	75 2e                	jne    10152e <syscallWrite+0x5c>
  101500:	83 ec 0c             	sub    $0xc,%esp
  101503:	ff 75 08             	pushl  0x8(%ebp)
  101506:	e8 2a 00 00 00       	call   101535 <syscallWriteStdOut>
  10150b:	83 c4 10             	add    $0x10,%esp
  10150e:	eb 1e                	jmp    10152e <syscallWrite+0x5c>
  101510:	c7 c0 80 7e 10 00    	mov    $0x107e80,%eax
  101516:	8b 40 30             	mov    0x30(%eax),%eax
  101519:	83 f8 01             	cmp    $0x1,%eax
  10151c:	75 13                	jne    101531 <syscallWrite+0x5f>
  10151e:	83 ec 0c             	sub    $0xc,%esp
  101521:	ff 75 08             	pushl  0x8(%ebp)
  101524:	e8 9f 01 00 00       	call   1016c8 <syscallWriteShMem>
  101529:	83 c4 10             	add    $0x10,%esp
  10152c:	eb 03                	jmp    101531 <syscallWrite+0x5f>
  10152e:	90                   	nop
  10152f:	eb 01                	jmp    101532 <syscallWrite+0x60>
  101531:	90                   	nop
  101532:	90                   	nop
  101533:	c9                   	leave  
  101534:	c3                   	ret    

00101535 <syscallWriteStdOut>:
  101535:	55                   	push   %ebp
  101536:	89 e5                	mov    %esp,%ebp
  101538:	53                   	push   %ebx
  101539:	83 ec 24             	sub    $0x24,%esp
  10153c:	e8 f4 f2 ff ff       	call   100835 <__x86.get_pc_thunk.bx>
  101541:	81 c3 bf 4a 00 00    	add    $0x4abf,%ebx
  101547:	8b 45 08             	mov    0x8(%ebp),%eax
  10154a:	8b 40 0c             	mov    0xc(%eax),%eax
  10154d:	89 45 e0             	mov    %eax,-0x20(%ebp)
  101550:	8b 45 08             	mov    0x8(%ebp),%eax
  101553:	8b 40 24             	mov    0x24(%eax),%eax
  101556:	89 45 f0             	mov    %eax,-0x10(%ebp)
  101559:	8b 45 08             	mov    0x8(%ebp),%eax
  10155c:	8b 40 20             	mov    0x20(%eax),%eax
  10155f:	89 45 ec             	mov    %eax,-0x14(%ebp)
  101562:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  101569:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%ebp)
  101570:	c6 45 e7 00          	movb   $0x0,-0x19(%ebp)
  101574:	66 c7 45 e4 00 00    	movw   $0x0,-0x1c(%ebp)
  10157a:	8e 45 e0             	mov    -0x20(%ebp),%es
  10157d:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  101584:	e9 10 01 00 00       	jmp    101699 <syscallWriteStdOut+0x164>
  101589:	8b 55 f4             	mov    -0xc(%ebp),%edx
  10158c:	8b 45 f0             	mov    -0x10(%ebp),%eax
  10158f:	01 d0                	add    %edx,%eax
  101591:	26 8a 00             	mov    %es:(%eax),%al
  101594:	88 45 e7             	mov    %al,-0x19(%ebp)
  101597:	80 7d e7 0a          	cmpb   $0xa,-0x19(%ebp)
  10159b:	75 52                	jne    1015ef <syscallWriteStdOut+0xba>
  10159d:	c7 c0 0c 62 10 00    	mov    $0x10620c,%eax
  1015a3:	8b 00                	mov    (%eax),%eax
  1015a5:	8d 50 01             	lea    0x1(%eax),%edx
  1015a8:	c7 c0 0c 62 10 00    	mov    $0x10620c,%eax
  1015ae:	89 10                	mov    %edx,(%eax)
  1015b0:	c7 c0 10 62 10 00    	mov    $0x106210,%eax
  1015b6:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
  1015bc:	c7 c0 0c 62 10 00    	mov    $0x10620c,%eax
  1015c2:	8b 00                	mov    (%eax),%eax
  1015c4:	83 f8 19             	cmp    $0x19,%eax
  1015c7:	0f 85 c9 00 00 00    	jne    101696 <syscallWriteStdOut+0x161>
  1015cd:	c7 c0 0c 62 10 00    	mov    $0x10620c,%eax
  1015d3:	c7 00 18 00 00 00    	movl   $0x18,(%eax)
  1015d9:	c7 c0 10 62 10 00    	mov    $0x106210,%eax
  1015df:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
  1015e5:	e8 7c 27 00 00       	call   103d66 <scrollScreen>
  1015ea:	e9 a7 00 00 00       	jmp    101696 <syscallWriteStdOut+0x161>
  1015ef:	66 0f be 45 e7       	movsbw -0x19(%ebp),%ax
  1015f4:	80 cc 0c             	or     $0xc,%ah
  1015f7:	66 89 45 e4          	mov    %ax,-0x1c(%ebp)
  1015fb:	c7 c0 0c 62 10 00    	mov    $0x10620c,%eax
  101601:	8b 10                	mov    (%eax),%edx
  101603:	89 d0                	mov    %edx,%eax
  101605:	c1 e0 02             	shl    $0x2,%eax
  101608:	01 d0                	add    %edx,%eax
  10160a:	c1 e0 04             	shl    $0x4,%eax
  10160d:	89 c2                	mov    %eax,%edx
  10160f:	c7 c0 10 62 10 00    	mov    $0x106210,%eax
  101615:	8b 00                	mov    (%eax),%eax
  101617:	01 d0                	add    %edx,%eax
  101619:	01 c0                	add    %eax,%eax
  10161b:	89 45 e8             	mov    %eax,-0x18(%ebp)
  10161e:	8b 45 e8             	mov    -0x18(%ebp),%eax
  101621:	8d 90 00 80 0b 00    	lea    0xb8000(%eax),%edx
  101627:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  10162a:	66 89 02             	mov    %ax,(%edx)
  10162d:	c7 c0 10 62 10 00    	mov    $0x106210,%eax
  101633:	8b 00                	mov    (%eax),%eax
  101635:	8d 50 01             	lea    0x1(%eax),%edx
  101638:	c7 c0 10 62 10 00    	mov    $0x106210,%eax
  10163e:	89 10                	mov    %edx,(%eax)
  101640:	c7 c0 10 62 10 00    	mov    $0x106210,%eax
  101646:	8b 00                	mov    (%eax),%eax
  101648:	83 f8 50             	cmp    $0x50,%eax
  10164b:	75 49                	jne    101696 <syscallWriteStdOut+0x161>
  10164d:	c7 c0 0c 62 10 00    	mov    $0x10620c,%eax
  101653:	8b 00                	mov    (%eax),%eax
  101655:	8d 50 01             	lea    0x1(%eax),%edx
  101658:	c7 c0 0c 62 10 00    	mov    $0x10620c,%eax
  10165e:	89 10                	mov    %edx,(%eax)
  101660:	c7 c0 10 62 10 00    	mov    $0x106210,%eax
  101666:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
  10166c:	c7 c0 0c 62 10 00    	mov    $0x10620c,%eax
  101672:	8b 00                	mov    (%eax),%eax
  101674:	83 f8 19             	cmp    $0x19,%eax
  101677:	75 1d                	jne    101696 <syscallWriteStdOut+0x161>
  101679:	c7 c0 0c 62 10 00    	mov    $0x10620c,%eax
  10167f:	c7 00 18 00 00 00    	movl   $0x18,(%eax)
  101685:	c7 c0 10 62 10 00    	mov    $0x106210,%eax
  10168b:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
  101691:	e8 d0 26 00 00       	call   103d66 <scrollScreen>
  101696:	ff 45 f4             	incl   -0xc(%ebp)
  101699:	8b 45 f4             	mov    -0xc(%ebp),%eax
  10169c:	3b 45 ec             	cmp    -0x14(%ebp),%eax
  10169f:	0f 8c e4 fe ff ff    	jl     101589 <syscallWriteStdOut+0x54>
  1016a5:	c7 c0 10 62 10 00    	mov    $0x106210,%eax
  1016ab:	8b 10                	mov    (%eax),%edx
  1016ad:	c7 c0 0c 62 10 00    	mov    $0x10620c,%eax
  1016b3:	8b 00                	mov    (%eax),%eax
  1016b5:	83 ec 08             	sub    $0x8,%esp
  1016b8:	52                   	push   %edx
  1016b9:	50                   	push   %eax
  1016ba:	e8 34 26 00 00       	call   103cf3 <updateCursor>
  1016bf:	83 c4 10             	add    $0x10,%esp
  1016c2:	90                   	nop
  1016c3:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  1016c6:	c9                   	leave  
  1016c7:	c3                   	ret    

001016c8 <syscallWriteShMem>:
  1016c8:	55                   	push   %ebp
  1016c9:	89 e5                	mov    %esp,%ebp
  1016cb:	e8 75 ed ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  1016d0:	05 30 49 00 00       	add    $0x4930,%eax
  1016d5:	90                   	nop
  1016d6:	5d                   	pop    %ebp
  1016d7:	c3                   	ret    

001016d8 <syscallRead>:
  1016d8:	55                   	push   %ebp
  1016d9:	89 e5                	mov    %esp,%ebp
  1016db:	83 ec 08             	sub    $0x8,%esp
  1016de:	e8 62 ed ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  1016e3:	05 1d 49 00 00       	add    $0x491d,%eax
  1016e8:	8b 55 08             	mov    0x8(%ebp),%edx
  1016eb:	8b 52 28             	mov    0x28(%edx),%edx
  1016ee:	83 fa 01             	cmp    $0x1,%edx
  1016f1:	74 07                	je     1016fa <syscallRead+0x22>
  1016f3:	83 fa 03             	cmp    $0x3,%edx
  1016f6:	74 20                	je     101718 <syscallRead+0x40>
  1016f8:	eb 40                	jmp    10173a <syscallRead+0x62>
  1016fa:	c7 c0 80 7e 10 00    	mov    $0x107e80,%eax
  101700:	8b 40 10             	mov    0x10(%eax),%eax
  101703:	83 f8 01             	cmp    $0x1,%eax
  101706:	75 2e                	jne    101736 <syscallRead+0x5e>
  101708:	83 ec 0c             	sub    $0xc,%esp
  10170b:	ff 75 08             	pushl  0x8(%ebp)
  10170e:	e8 2a 00 00 00       	call   10173d <syscallReadStdIn>
  101713:	83 c4 10             	add    $0x10,%esp
  101716:	eb 1e                	jmp    101736 <syscallRead+0x5e>
  101718:	c7 c0 80 7e 10 00    	mov    $0x107e80,%eax
  10171e:	8b 40 30             	mov    0x30(%eax),%eax
  101721:	83 f8 01             	cmp    $0x1,%eax
  101724:	75 13                	jne    101739 <syscallRead+0x61>
  101726:	83 ec 0c             	sub    $0xc,%esp
  101729:	ff 75 08             	pushl  0x8(%ebp)
  10172c:	e8 00 03 00 00       	call   101a31 <syscallReadShMem>
  101731:	83 c4 10             	add    $0x10,%esp
  101734:	eb 03                	jmp    101739 <syscallRead+0x61>
  101736:	90                   	nop
  101737:	eb 01                	jmp    10173a <syscallRead+0x62>
  101739:	90                   	nop
  10173a:	90                   	nop
  10173b:	c9                   	leave  
  10173c:	c3                   	ret    

0010173d <syscallReadStdIn>:
  10173d:	55                   	push   %ebp
  10173e:	89 e5                	mov    %esp,%ebp
  101740:	56                   	push   %esi
  101741:	53                   	push   %ebx
  101742:	83 ec 10             	sub    $0x10,%esp
  101745:	e8 fb ec ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  10174a:	05 b6 48 00 00       	add    $0x48b6,%eax
  10174f:	c7 c2 80 7e 10 00    	mov    $0x107e80,%edx
  101755:	8b 52 14             	mov    0x14(%edx),%edx
  101758:	85 d2                	test   %edx,%edx
  10175a:	0f 85 1c 02 00 00    	jne    10197c <syscallReadStdIn+0x23f>
  101760:	c7 c2 80 7e 10 00    	mov    $0x107e80,%edx
  101766:	8b 52 10             	mov    0x10(%edx),%edx
  101769:	85 d2                	test   %edx,%edx
  10176b:	75 42                	jne    1017af <syscallReadStdIn+0x72>
  10176d:	c7 c2 44 80 10 00    	mov    $0x108044,%edx
  101773:	8b 12                	mov    (%edx),%edx
  101775:	c7 c1 60 84 10 00    	mov    $0x108460,%ecx
  10177b:	89 d0                	mov    %edx,%eax
  10177d:	01 c0                	add    %eax,%eax
  10177f:	01 d0                	add    %edx,%eax
  101781:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  101788:	01 d0                	add    %edx,%eax
  10178a:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  101791:	01 d0                	add    %edx,%eax
  101793:	89 c2                	mov    %eax,%edx
  101795:	c1 e2 04             	shl    $0x4,%edx
  101798:	01 d0                	add    %edx,%eax
  10179a:	c1 e0 02             	shl    $0x2,%eax
  10179d:	01 c8                	add    %ecx,%eax
  10179f:	05 2c 40 00 00       	add    $0x402c,%eax
  1017a4:	c7 00 ff ff ff ff    	movl   $0xffffffff,(%eax)
  1017aa:	e9 7b 02 00 00       	jmp    101a2a <syscallReadStdIn+0x2ed>
  1017af:	c7 c2 44 80 10 00    	mov    $0x108044,%edx
  1017b5:	8b 0a                	mov    (%edx),%ecx
  1017b7:	c7 c3 60 84 10 00    	mov    $0x108460,%ebx
  1017bd:	89 ca                	mov    %ecx,%edx
  1017bf:	01 d2                	add    %edx,%edx
  1017c1:	01 ca                	add    %ecx,%edx
  1017c3:	8d 0c d5 00 00 00 00 	lea    0x0(,%edx,8),%ecx
  1017ca:	01 ca                	add    %ecx,%edx
  1017cc:	8d 0c d5 00 00 00 00 	lea    0x0(,%edx,8),%ecx
  1017d3:	01 ca                	add    %ecx,%edx
  1017d5:	89 d1                	mov    %edx,%ecx
  1017d7:	c1 e1 04             	shl    $0x4,%ecx
  1017da:	01 ca                	add    %ecx,%edx
  1017dc:	c1 e2 02             	shl    $0x2,%edx
  1017df:	01 da                	add    %ebx,%edx
  1017e1:	81 c2 54 40 00 00    	add    $0x4054,%edx
  1017e7:	c7 02 02 00 00 00    	movl   $0x2,(%edx)
  1017ed:	c7 c2 44 80 10 00    	mov    $0x108044,%edx
  1017f3:	8b 0a                	mov    (%edx),%ecx
  1017f5:	c7 c3 60 84 10 00    	mov    $0x108460,%ebx
  1017fb:	89 ca                	mov    %ecx,%edx
  1017fd:	01 d2                	add    %edx,%edx
  1017ff:	01 ca                	add    %ecx,%edx
  101801:	8d 0c d5 00 00 00 00 	lea    0x0(,%edx,8),%ecx
  101808:	01 ca                	add    %ecx,%edx
  10180a:	8d 0c d5 00 00 00 00 	lea    0x0(,%edx,8),%ecx
  101811:	01 ca                	add    %ecx,%edx
  101813:	89 d1                	mov    %edx,%ecx
  101815:	c1 e1 04             	shl    $0x4,%ecx
  101818:	01 ca                	add    %ecx,%edx
  10181a:	c1 e2 02             	shl    $0x2,%edx
  10181d:	01 da                	add    %ebx,%edx
  10181f:	81 c2 5c 40 00 00    	add    $0x405c,%edx
  101825:	c7 02 ff ff ff ff    	movl   $0xffffffff,(%edx)
  10182b:	c7 c2 44 80 10 00    	mov    $0x108044,%edx
  101831:	8b 1a                	mov    (%edx),%ebx
  101833:	c7 c2 80 7e 10 00    	mov    $0x107e80,%edx
  101839:	8b 4a 18             	mov    0x18(%edx),%ecx
  10183c:	c7 c6 60 84 10 00    	mov    $0x108460,%esi
  101842:	89 da                	mov    %ebx,%edx
  101844:	01 d2                	add    %edx,%edx
  101846:	01 da                	add    %ebx,%edx
  101848:	8d 1c d5 00 00 00 00 	lea    0x0(,%edx,8),%ebx
  10184f:	01 da                	add    %ebx,%edx
  101851:	8d 1c d5 00 00 00 00 	lea    0x0(,%edx,8),%ebx
  101858:	01 da                	add    %ebx,%edx
  10185a:	89 d3                	mov    %edx,%ebx
  10185c:	c1 e3 04             	shl    $0x4,%ebx
  10185f:	01 da                	add    %ebx,%edx
  101861:	c1 e2 02             	shl    $0x2,%edx
  101864:	01 f2                	add    %esi,%edx
  101866:	81 c2 84 40 00 00    	add    $0x4084,%edx
  10186c:	89 0a                	mov    %ecx,(%edx)
  10186e:	c7 c2 44 80 10 00    	mov    $0x108044,%edx
  101874:	8b 0a                	mov    (%edx),%ecx
  101876:	c7 c3 60 84 10 00    	mov    $0x108460,%ebx
  10187c:	89 ca                	mov    %ecx,%edx
  10187e:	01 d2                	add    %edx,%edx
  101880:	01 ca                	add    %ecx,%edx
  101882:	8d 0c d5 00 00 00 00 	lea    0x0(,%edx,8),%ecx
  101889:	01 ca                	add    %ecx,%edx
  10188b:	8d 0c d5 00 00 00 00 	lea    0x0(,%edx,8),%ecx
  101892:	01 ca                	add    %ecx,%edx
  101894:	89 d1                	mov    %edx,%ecx
  101896:	c1 e1 04             	shl    $0x4,%ecx
  101899:	01 ca                	add    %ecx,%edx
  10189b:	c1 e2 02             	shl    $0x2,%edx
  10189e:	01 da                	add    %ebx,%edx
  1018a0:	8d 8a 88 40 00 00    	lea    0x4088(%edx),%ecx
  1018a6:	c7 c2 80 7e 10 00    	mov    $0x107e80,%edx
  1018ac:	8d 52 18             	lea    0x18(%edx),%edx
  1018af:	89 11                	mov    %edx,(%ecx)
  1018b1:	c7 c2 44 80 10 00    	mov    $0x108044,%edx
  1018b7:	8b 0a                	mov    (%edx),%ecx
  1018b9:	89 ca                	mov    %ecx,%edx
  1018bb:	01 d2                	add    %edx,%edx
  1018bd:	01 ca                	add    %ecx,%edx
  1018bf:	8d 0c d5 00 00 00 00 	lea    0x0(,%edx,8),%ecx
  1018c6:	01 ca                	add    %ecx,%edx
  1018c8:	8d 0c d5 00 00 00 00 	lea    0x0(,%edx,8),%ecx
  1018cf:	01 ca                	add    %ecx,%edx
  1018d1:	89 d1                	mov    %edx,%ecx
  1018d3:	c1 e1 04             	shl    $0x4,%ecx
  1018d6:	01 ca                	add    %ecx,%edx
  1018d8:	c1 e2 02             	shl    $0x2,%edx
  1018db:	8d 8a 80 40 00 00    	lea    0x4080(%edx),%ecx
  1018e1:	c7 c2 60 84 10 00    	mov    $0x108460,%edx
  1018e7:	01 ca                	add    %ecx,%edx
  1018e9:	8d 4a 04             	lea    0x4(%edx),%ecx
  1018ec:	c7 c2 80 7e 10 00    	mov    $0x107e80,%edx
  1018f2:	89 4a 18             	mov    %ecx,0x18(%edx)
  1018f5:	c7 c2 44 80 10 00    	mov    $0x108044,%edx
  1018fb:	8b 1a                	mov    (%edx),%ebx
  1018fd:	c7 c2 44 80 10 00    	mov    $0x108044,%edx
  101903:	8b 0a                	mov    (%edx),%ecx
  101905:	c7 c6 60 84 10 00    	mov    $0x108460,%esi
  10190b:	89 ca                	mov    %ecx,%edx
  10190d:	01 d2                	add    %edx,%edx
  10190f:	01 ca                	add    %ecx,%edx
  101911:	8d 0c d5 00 00 00 00 	lea    0x0(,%edx,8),%ecx
  101918:	01 ca                	add    %ecx,%edx
  10191a:	8d 0c d5 00 00 00 00 	lea    0x0(,%edx,8),%ecx
  101921:	01 ca                	add    %ecx,%edx
  101923:	89 d1                	mov    %edx,%ecx
  101925:	c1 e1 04             	shl    $0x4,%ecx
  101928:	01 ca                	add    %ecx,%edx
  10192a:	c1 e2 02             	shl    $0x2,%edx
  10192d:	01 f2                	add    %esi,%edx
  10192f:	81 c2 84 40 00 00    	add    $0x4084,%edx
  101935:	8b 0a                	mov    (%edx),%ecx
  101937:	89 da                	mov    %ebx,%edx
  101939:	01 d2                	add    %edx,%edx
  10193b:	01 da                	add    %ebx,%edx
  10193d:	8d 1c d5 00 00 00 00 	lea    0x0(,%edx,8),%ebx
  101944:	01 da                	add    %ebx,%edx
  101946:	8d 1c d5 00 00 00 00 	lea    0x0(,%edx,8),%ebx
  10194d:	01 da                	add    %ebx,%edx
  10194f:	89 d3                	mov    %edx,%ebx
  101951:	c1 e3 04             	shl    $0x4,%ebx
  101954:	01 da                	add    %ebx,%edx
  101956:	c1 e2 02             	shl    $0x2,%edx
  101959:	8d 9a 80 40 00 00    	lea    0x4080(%edx),%ebx
  10195f:	c7 c2 60 84 10 00    	mov    $0x108460,%edx
  101965:	01 da                	add    %ebx,%edx
  101967:	83 c2 04             	add    $0x4,%edx
  10196a:	89 51 04             	mov    %edx,0x4(%ecx)
  10196d:	c7 c2 80 7e 10 00    	mov    $0x107e80,%edx
  101973:	c7 42 10 00 00 00 00 	movl   $0x0,0x10(%edx)
  10197a:	cd 20                	int    $0x20
  10197c:	8b 55 08             	mov    0x8(%ebp),%edx
  10197f:	8b 52 0c             	mov    0xc(%edx),%edx
  101982:	89 55 ec             	mov    %edx,-0x14(%ebp)
  101985:	8b 55 08             	mov    0x8(%ebp),%edx
  101988:	8b 52 24             	mov    0x24(%edx),%edx
  10198b:	89 55 f0             	mov    %edx,-0x10(%ebp)
  10198e:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  101995:	eb 3b                	jmp    1019d2 <syscallReadStdIn+0x295>
  101997:	8e 45 ec             	mov    -0x14(%ebp),%es
  10199a:	c7 c2 60 7e 10 00    	mov    $0x107e60,%edx
  1019a0:	8b 0a                	mov    (%edx),%ecx
  1019a2:	8b 55 f4             	mov    -0xc(%ebp),%edx
  1019a5:	01 ca                	add    %ecx,%edx
  1019a7:	81 e2 ff 00 00 80    	and    $0x800000ff,%edx
  1019ad:	85 d2                	test   %edx,%edx
  1019af:	79 08                	jns    1019b9 <syscallReadStdIn+0x27c>
  1019b1:	4a                   	dec    %edx
  1019b2:	81 ca 00 ff ff ff    	or     $0xffffff00,%edx
  1019b8:	42                   	inc    %edx
  1019b9:	89 d1                	mov    %edx,%ecx
  1019bb:	c7 c2 60 7a 10 00    	mov    $0x107a60,%edx
  1019c1:	8b 14 8a             	mov    (%edx,%ecx,4),%edx
  1019c4:	8b 5d f4             	mov    -0xc(%ebp),%ebx
  1019c7:	8b 4d f0             	mov    -0x10(%ebp),%ecx
  1019ca:	01 d9                	add    %ebx,%ecx
  1019cc:	26 88 11             	mov    %dl,%es:(%ecx)
  1019cf:	ff 45 f4             	incl   -0xc(%ebp)
  1019d2:	8b 55 08             	mov    0x8(%ebp),%edx
  1019d5:	8b 4a 20             	mov    0x20(%edx),%ecx
  1019d8:	8b 55 f4             	mov    -0xc(%ebp),%edx
  1019db:	39 d1                	cmp    %edx,%ecx
  1019dd:	76 2d                	jbe    101a0c <syscallReadStdIn+0x2cf>
  1019df:	c7 c2 60 7e 10 00    	mov    $0x107e60,%edx
  1019e5:	8b 0a                	mov    (%edx),%ecx
  1019e7:	8b 55 f4             	mov    -0xc(%ebp),%edx
  1019ea:	01 ca                	add    %ecx,%edx
  1019ec:	81 e2 ff 00 00 80    	and    $0x800000ff,%edx
  1019f2:	85 d2                	test   %edx,%edx
  1019f4:	79 08                	jns    1019fe <syscallReadStdIn+0x2c1>
  1019f6:	4a                   	dec    %edx
  1019f7:	81 ca 00 ff ff ff    	or     $0xffffff00,%edx
  1019fd:	42                   	inc    %edx
  1019fe:	89 d1                	mov    %edx,%ecx
  101a00:	c7 c2 40 7a 10 00    	mov    $0x107a40,%edx
  101a06:	8b 12                	mov    (%edx),%edx
  101a08:	39 d1                	cmp    %edx,%ecx
  101a0a:	75 8b                	jne    101997 <syscallReadStdIn+0x25a>
  101a0c:	c7 c2 60 7e 10 00    	mov    $0x107e60,%edx
  101a12:	8b 0a                	mov    (%edx),%ecx
  101a14:	c7 c2 40 7a 10 00    	mov    $0x107a40,%edx
  101a1a:	89 0a                	mov    %ecx,(%edx)
  101a1c:	c7 c0 80 7e 10 00    	mov    $0x107e80,%eax
  101a22:	c7 40 10 01 00 00 00 	movl   $0x1,0x10(%eax)
  101a29:	90                   	nop
  101a2a:	83 c4 10             	add    $0x10,%esp
  101a2d:	5b                   	pop    %ebx
  101a2e:	5e                   	pop    %esi
  101a2f:	5d                   	pop    %ebp
  101a30:	c3                   	ret    

00101a31 <syscallReadShMem>:
  101a31:	55                   	push   %ebp
  101a32:	89 e5                	mov    %esp,%ebp
  101a34:	e8 0c ea ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  101a39:	05 c7 45 00 00       	add    $0x45c7,%eax
  101a3e:	90                   	nop
  101a3f:	5d                   	pop    %ebp
  101a40:	c3                   	ret    

00101a41 <syscallFork>:
  101a41:	55                   	push   %ebp
  101a42:	89 e5                	mov    %esp,%ebp
  101a44:	56                   	push   %esi
  101a45:	53                   	push   %ebx
  101a46:	83 ec 10             	sub    $0x10,%esp
  101a49:	e8 e7 ed ff ff       	call   100835 <__x86.get_pc_thunk.bx>
  101a4e:	81 c3 b2 45 00 00    	add    $0x45b2,%ebx
  101a54:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  101a5b:	eb 3c                	jmp    101a99 <syscallFork+0x58>
  101a5d:	c7 c1 60 84 10 00    	mov    $0x108460,%ecx
  101a63:	8b 55 f4             	mov    -0xc(%ebp),%edx
  101a66:	89 d0                	mov    %edx,%eax
  101a68:	01 c0                	add    %eax,%eax
  101a6a:	01 d0                	add    %edx,%eax
  101a6c:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  101a73:	01 d0                	add    %edx,%eax
  101a75:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  101a7c:	01 d0                	add    %edx,%eax
  101a7e:	89 c2                	mov    %eax,%edx
  101a80:	c1 e2 04             	shl    $0x4,%edx
  101a83:	01 d0                	add    %edx,%eax
  101a85:	c1 e0 02             	shl    $0x2,%eax
  101a88:	01 c8                	add    %ecx,%eax
  101a8a:	05 54 40 00 00       	add    $0x4054,%eax
  101a8f:	8b 00                	mov    (%eax),%eax
  101a91:	83 f8 03             	cmp    $0x3,%eax
  101a94:	74 0b                	je     101aa1 <syscallFork+0x60>
  101a96:	ff 45 f4             	incl   -0xc(%ebp)
  101a99:	83 7d f4 08          	cmpl   $0x8,-0xc(%ebp)
  101a9d:	7e be                	jle    101a5d <syscallFork+0x1c>
  101a9f:	eb 01                	jmp    101aa2 <syscallFork+0x61>
  101aa1:	90                   	nop
  101aa2:	83 7d f4 09          	cmpl   $0x9,-0xc(%ebp)
  101aa6:	0f 84 c5 0a 00 00    	je     102571 <syscallFork+0xb30>
  101aac:	c7 c1 60 84 10 00    	mov    $0x108460,%ecx
  101ab2:	8b 55 f4             	mov    -0xc(%ebp),%edx
  101ab5:	89 d0                	mov    %edx,%eax
  101ab7:	01 c0                	add    %eax,%eax
  101ab9:	01 d0                	add    %edx,%eax
  101abb:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  101ac2:	01 d0                	add    %edx,%eax
  101ac4:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  101acb:	01 d0                	add    %edx,%eax
  101acd:	89 c2                	mov    %eax,%edx
  101acf:	c1 e2 04             	shl    $0x4,%edx
  101ad2:	01 d0                	add    %edx,%eax
  101ad4:	c1 e0 02             	shl    $0x2,%eax
  101ad7:	01 c8                	add    %ecx,%eax
  101ad9:	05 54 40 00 00       	add    $0x4054,%eax
  101ade:	c7 00 ff ff ff ff    	movl   $0xffffffff,(%eax)
  101ae4:	e8 f8 f0 ff ff       	call   100be1 <enableInterrupt>
  101ae9:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
  101af0:	eb 28                	jmp    101b1a <syscallFork+0xd9>
  101af2:	c7 c0 44 80 10 00    	mov    $0x108044,%eax
  101af8:	8b 00                	mov    (%eax),%eax
  101afa:	40                   	inc    %eax
  101afb:	c1 e0 14             	shl    $0x14,%eax
  101afe:	89 c2                	mov    %eax,%edx
  101b00:	8b 45 f0             	mov    -0x10(%ebp),%eax
  101b03:	01 d0                	add    %edx,%eax
  101b05:	8b 55 f4             	mov    -0xc(%ebp),%edx
  101b08:	42                   	inc    %edx
  101b09:	89 d1                	mov    %edx,%ecx
  101b0b:	c1 e1 14             	shl    $0x14,%ecx
  101b0e:	8b 55 f0             	mov    -0x10(%ebp),%edx
  101b11:	01 ca                	add    %ecx,%edx
  101b13:	8a 00                	mov    (%eax),%al
  101b15:	88 02                	mov    %al,(%edx)
  101b17:	ff 45 f0             	incl   -0x10(%ebp)
  101b1a:	81 7d f0 ff ff 0f 00 	cmpl   $0xfffff,-0x10(%ebp)
  101b21:	7e cf                	jle    101af2 <syscallFork+0xb1>
  101b23:	e8 ca f0 ff ff       	call   100bf2 <disableInterrupt>
  101b28:	8b 55 f4             	mov    -0xc(%ebp),%edx
  101b2b:	89 d0                	mov    %edx,%eax
  101b2d:	01 c0                	add    %eax,%eax
  101b2f:	01 d0                	add    %edx,%eax
  101b31:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  101b38:	01 d0                	add    %edx,%eax
  101b3a:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  101b41:	01 d0                	add    %edx,%eax
  101b43:	89 c2                	mov    %eax,%edx
  101b45:	c1 e2 04             	shl    $0x4,%edx
  101b48:	01 d0                	add    %edx,%eax
  101b4a:	c1 e0 02             	shl    $0x2,%eax
  101b4d:	8d 90 40 40 00 00    	lea    0x4040(%eax),%edx
  101b53:	c7 c0 60 84 10 00    	mov    $0x108460,%eax
  101b59:	01 d0                	add    %edx,%eax
  101b5b:	83 c0 0c             	add    $0xc,%eax
  101b5e:	89 c6                	mov    %eax,%esi
  101b60:	c7 c0 44 80 10 00    	mov    $0x108044,%eax
  101b66:	8b 10                	mov    (%eax),%edx
  101b68:	c7 c1 60 84 10 00    	mov    $0x108460,%ecx
  101b6e:	89 d0                	mov    %edx,%eax
  101b70:	01 c0                	add    %eax,%eax
  101b72:	01 d0                	add    %edx,%eax
  101b74:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  101b7b:	01 d0                	add    %edx,%eax
  101b7d:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  101b84:	01 d0                	add    %edx,%eax
  101b86:	89 c2                	mov    %eax,%edx
  101b88:	c1 e2 04             	shl    $0x4,%edx
  101b8b:	01 d0                	add    %edx,%eax
  101b8d:	c1 e0 02             	shl    $0x2,%eax
  101b90:	01 c8                	add    %ecx,%eax
  101b92:	05 4c 40 00 00       	add    $0x404c,%eax
  101b97:	8b 08                	mov    (%eax),%ecx
  101b99:	c7 c0 44 80 10 00    	mov    $0x108044,%eax
  101b9f:	8b 10                	mov    (%eax),%edx
  101ba1:	89 d0                	mov    %edx,%eax
  101ba3:	01 c0                	add    %eax,%eax
  101ba5:	01 d0                	add    %edx,%eax
  101ba7:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  101bae:	01 d0                	add    %edx,%eax
  101bb0:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  101bb7:	01 d0                	add    %edx,%eax
  101bb9:	89 c2                	mov    %eax,%edx
  101bbb:	c1 e2 04             	shl    $0x4,%edx
  101bbe:	01 d0                	add    %edx,%eax
  101bc0:	c1 e0 02             	shl    $0x2,%eax
  101bc3:	8d 90 40 40 00 00    	lea    0x4040(%eax),%edx
  101bc9:	c7 c0 60 84 10 00    	mov    $0x108460,%eax
  101bcf:	01 d0                	add    %edx,%eax
  101bd1:	83 c0 0c             	add    $0xc,%eax
  101bd4:	29 c1                	sub    %eax,%ecx
  101bd6:	89 c8                	mov    %ecx,%eax
  101bd8:	8d 0c 06             	lea    (%esi,%eax,1),%ecx
  101bdb:	c7 c6 60 84 10 00    	mov    $0x108460,%esi
  101be1:	8b 55 f4             	mov    -0xc(%ebp),%edx
  101be4:	89 d0                	mov    %edx,%eax
  101be6:	01 c0                	add    %eax,%eax
  101be8:	01 d0                	add    %edx,%eax
  101bea:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  101bf1:	01 d0                	add    %edx,%eax
  101bf3:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  101bfa:	01 d0                	add    %edx,%eax
  101bfc:	89 c2                	mov    %eax,%edx
  101bfe:	c1 e2 04             	shl    $0x4,%edx
  101c01:	01 d0                	add    %edx,%eax
  101c03:	c1 e0 02             	shl    $0x2,%eax
  101c06:	01 f0                	add    %esi,%eax
  101c08:	05 4c 40 00 00       	add    $0x404c,%eax
  101c0d:	89 08                	mov    %ecx,(%eax)
  101c0f:	8b 55 f4             	mov    -0xc(%ebp),%edx
  101c12:	89 d0                	mov    %edx,%eax
  101c14:	01 c0                	add    %eax,%eax
  101c16:	01 d0                	add    %edx,%eax
  101c18:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  101c1f:	01 d0                	add    %edx,%eax
  101c21:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  101c28:	01 d0                	add    %edx,%eax
  101c2a:	89 c2                	mov    %eax,%edx
  101c2c:	c1 e2 04             	shl    $0x4,%edx
  101c2f:	01 d0                	add    %edx,%eax
  101c31:	c1 e0 02             	shl    $0x2,%eax
  101c34:	8d 90 40 40 00 00    	lea    0x4040(%eax),%edx
  101c3a:	c7 c0 60 84 10 00    	mov    $0x108460,%eax
  101c40:	01 d0                	add    %edx,%eax
  101c42:	83 c0 0c             	add    $0xc,%eax
  101c45:	89 c6                	mov    %eax,%esi
  101c47:	c7 c0 44 80 10 00    	mov    $0x108044,%eax
  101c4d:	8b 10                	mov    (%eax),%edx
  101c4f:	c7 c1 60 84 10 00    	mov    $0x108460,%ecx
  101c55:	89 d0                	mov    %edx,%eax
  101c57:	01 c0                	add    %eax,%eax
  101c59:	01 d0                	add    %edx,%eax
  101c5b:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  101c62:	01 d0                	add    %edx,%eax
  101c64:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  101c6b:	01 d0                	add    %edx,%eax
  101c6d:	89 c2                	mov    %eax,%edx
  101c6f:	c1 e2 04             	shl    $0x4,%edx
  101c72:	01 d0                	add    %edx,%eax
  101c74:	c1 e0 02             	shl    $0x2,%eax
  101c77:	01 c8                	add    %ecx,%eax
  101c79:	05 50 40 00 00       	add    $0x4050,%eax
  101c7e:	8b 08                	mov    (%eax),%ecx
  101c80:	c7 c0 44 80 10 00    	mov    $0x108044,%eax
  101c86:	8b 10                	mov    (%eax),%edx
  101c88:	89 d0                	mov    %edx,%eax
  101c8a:	01 c0                	add    %eax,%eax
  101c8c:	01 d0                	add    %edx,%eax
  101c8e:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  101c95:	01 d0                	add    %edx,%eax
  101c97:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  101c9e:	01 d0                	add    %edx,%eax
  101ca0:	89 c2                	mov    %eax,%edx
  101ca2:	c1 e2 04             	shl    $0x4,%edx
  101ca5:	01 d0                	add    %edx,%eax
  101ca7:	c1 e0 02             	shl    $0x2,%eax
  101caa:	8d 90 40 40 00 00    	lea    0x4040(%eax),%edx
  101cb0:	c7 c0 60 84 10 00    	mov    $0x108460,%eax
  101cb6:	01 d0                	add    %edx,%eax
  101cb8:	83 c0 0c             	add    $0xc,%eax
  101cbb:	29 c1                	sub    %eax,%ecx
  101cbd:	89 c8                	mov    %ecx,%eax
  101cbf:	8d 0c 06             	lea    (%esi,%eax,1),%ecx
  101cc2:	c7 c6 60 84 10 00    	mov    $0x108460,%esi
  101cc8:	8b 55 f4             	mov    -0xc(%ebp),%edx
  101ccb:	89 d0                	mov    %edx,%eax
  101ccd:	01 c0                	add    %eax,%eax
  101ccf:	01 d0                	add    %edx,%eax
  101cd1:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  101cd8:	01 d0                	add    %edx,%eax
  101cda:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  101ce1:	01 d0                	add    %edx,%eax
  101ce3:	89 c2                	mov    %eax,%edx
  101ce5:	c1 e2 04             	shl    $0x4,%edx
  101ce8:	01 d0                	add    %edx,%eax
  101cea:	c1 e0 02             	shl    $0x2,%eax
  101ced:	01 f0                	add    %esi,%eax
  101cef:	05 50 40 00 00       	add    $0x4050,%eax
  101cf4:	89 08                	mov    %ecx,(%eax)
  101cf6:	c7 c1 60 84 10 00    	mov    $0x108460,%ecx
  101cfc:	8b 55 f4             	mov    -0xc(%ebp),%edx
  101cff:	89 d0                	mov    %edx,%eax
  101d01:	01 c0                	add    %eax,%eax
  101d03:	01 d0                	add    %edx,%eax
  101d05:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  101d0c:	01 d0                	add    %edx,%eax
  101d0e:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  101d15:	01 d0                	add    %edx,%eax
  101d17:	89 c2                	mov    %eax,%edx
  101d19:	c1 e2 04             	shl    $0x4,%edx
  101d1c:	01 d0                	add    %edx,%eax
  101d1e:	c1 e0 02             	shl    $0x2,%eax
  101d21:	01 c8                	add    %ecx,%eax
  101d23:	05 54 40 00 00       	add    $0x4054,%eax
  101d28:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
  101d2e:	c7 c0 44 80 10 00    	mov    $0x108044,%eax
  101d34:	8b 10                	mov    (%eax),%edx
  101d36:	c7 c1 60 84 10 00    	mov    $0x108460,%ecx
  101d3c:	89 d0                	mov    %edx,%eax
  101d3e:	01 c0                	add    %eax,%eax
  101d40:	01 d0                	add    %edx,%eax
  101d42:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  101d49:	01 d0                	add    %edx,%eax
  101d4b:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  101d52:	01 d0                	add    %edx,%eax
  101d54:	89 c2                	mov    %eax,%edx
  101d56:	c1 e2 04             	shl    $0x4,%edx
  101d59:	01 d0                	add    %edx,%eax
  101d5b:	c1 e0 02             	shl    $0x2,%eax
  101d5e:	01 c8                	add    %ecx,%eax
  101d60:	05 58 40 00 00       	add    $0x4058,%eax
  101d65:	8b 10                	mov    (%eax),%edx
  101d67:	c7 c6 60 84 10 00    	mov    $0x108460,%esi
  101d6d:	8b 4d f4             	mov    -0xc(%ebp),%ecx
  101d70:	89 c8                	mov    %ecx,%eax
  101d72:	01 c0                	add    %eax,%eax
  101d74:	01 c8                	add    %ecx,%eax
  101d76:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
  101d7d:	01 c8                	add    %ecx,%eax
  101d7f:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
  101d86:	01 c8                	add    %ecx,%eax
  101d88:	89 c1                	mov    %eax,%ecx
  101d8a:	c1 e1 04             	shl    $0x4,%ecx
  101d8d:	01 c8                	add    %ecx,%eax
  101d8f:	c1 e0 02             	shl    $0x2,%eax
  101d92:	01 f0                	add    %esi,%eax
  101d94:	05 58 40 00 00       	add    $0x4058,%eax
  101d99:	89 10                	mov    %edx,(%eax)
  101d9b:	c7 c0 44 80 10 00    	mov    $0x108044,%eax
  101da1:	8b 10                	mov    (%eax),%edx
  101da3:	c7 c1 60 84 10 00    	mov    $0x108460,%ecx
  101da9:	89 d0                	mov    %edx,%eax
  101dab:	01 c0                	add    %eax,%eax
  101dad:	01 d0                	add    %edx,%eax
  101daf:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  101db6:	01 d0                	add    %edx,%eax
  101db8:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  101dbf:	01 d0                	add    %edx,%eax
  101dc1:	89 c2                	mov    %eax,%edx
  101dc3:	c1 e2 04             	shl    $0x4,%edx
  101dc6:	01 d0                	add    %edx,%eax
  101dc8:	c1 e0 02             	shl    $0x2,%eax
  101dcb:	01 c8                	add    %ecx,%eax
  101dcd:	05 5c 40 00 00       	add    $0x405c,%eax
  101dd2:	8b 10                	mov    (%eax),%edx
  101dd4:	c7 c6 60 84 10 00    	mov    $0x108460,%esi
  101dda:	8b 4d f4             	mov    -0xc(%ebp),%ecx
  101ddd:	89 c8                	mov    %ecx,%eax
  101ddf:	01 c0                	add    %eax,%eax
  101de1:	01 c8                	add    %ecx,%eax
  101de3:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
  101dea:	01 c8                	add    %ecx,%eax
  101dec:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
  101df3:	01 c8                	add    %ecx,%eax
  101df5:	89 c1                	mov    %eax,%ecx
  101df7:	c1 e1 04             	shl    $0x4,%ecx
  101dfa:	01 c8                	add    %ecx,%eax
  101dfc:	c1 e0 02             	shl    $0x2,%eax
  101dff:	01 f0                	add    %esi,%eax
  101e01:	05 5c 40 00 00       	add    $0x405c,%eax
  101e06:	89 10                	mov    %edx,(%eax)
  101e08:	8b 55 f4             	mov    -0xc(%ebp),%edx
  101e0b:	c7 c6 60 84 10 00    	mov    $0x108460,%esi
  101e11:	8b 4d f4             	mov    -0xc(%ebp),%ecx
  101e14:	89 c8                	mov    %ecx,%eax
  101e16:	01 c0                	add    %eax,%eax
  101e18:	01 c8                	add    %ecx,%eax
  101e1a:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
  101e21:	01 c8                	add    %ecx,%eax
  101e23:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
  101e2a:	01 c8                	add    %ecx,%eax
  101e2c:	89 c1                	mov    %eax,%ecx
  101e2e:	c1 e1 04             	shl    $0x4,%ecx
  101e31:	01 c8                	add    %ecx,%eax
  101e33:	c1 e0 02             	shl    $0x2,%eax
  101e36:	01 f0                	add    %esi,%eax
  101e38:	05 60 40 00 00       	add    $0x4060,%eax
  101e3d:	89 10                	mov    %edx,(%eax)
  101e3f:	8b 45 f4             	mov    -0xc(%ebp),%eax
  101e42:	40                   	inc    %eax
  101e43:	01 c0                	add    %eax,%eax
  101e45:	c1 e0 03             	shl    $0x3,%eax
  101e48:	83 c8 03             	or     $0x3,%eax
  101e4b:	89 c1                	mov    %eax,%ecx
  101e4d:	c7 c6 60 84 10 00    	mov    $0x108460,%esi
  101e53:	8b 55 f4             	mov    -0xc(%ebp),%edx
  101e56:	89 d0                	mov    %edx,%eax
  101e58:	01 c0                	add    %eax,%eax
  101e5a:	01 d0                	add    %edx,%eax
  101e5c:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  101e63:	01 d0                	add    %edx,%eax
  101e65:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  101e6c:	01 d0                	add    %edx,%eax
  101e6e:	89 c2                	mov    %eax,%edx
  101e70:	c1 e2 04             	shl    $0x4,%edx
  101e73:	01 d0                	add    %edx,%eax
  101e75:	c1 e0 02             	shl    $0x2,%eax
  101e78:	01 f0                	add    %esi,%eax
  101e7a:	05 48 40 00 00       	add    $0x4048,%eax
  101e7f:	89 08                	mov    %ecx,(%eax)
  101e81:	c7 c0 44 80 10 00    	mov    $0x108044,%eax
  101e87:	8b 10                	mov    (%eax),%edx
  101e89:	c7 c1 60 84 10 00    	mov    $0x108460,%ecx
  101e8f:	89 d0                	mov    %edx,%eax
  101e91:	01 c0                	add    %eax,%eax
  101e93:	01 d0                	add    %edx,%eax
  101e95:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  101e9c:	01 d0                	add    %edx,%eax
  101e9e:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  101ea5:	01 d0                	add    %edx,%eax
  101ea7:	89 c2                	mov    %eax,%edx
  101ea9:	c1 e2 04             	shl    $0x4,%edx
  101eac:	01 d0                	add    %edx,%eax
  101eae:	c1 e0 02             	shl    $0x2,%eax
  101eb1:	01 c8                	add    %ecx,%eax
  101eb3:	05 44 40 00 00       	add    $0x4044,%eax
  101eb8:	8b 10                	mov    (%eax),%edx
  101eba:	c7 c6 60 84 10 00    	mov    $0x108460,%esi
  101ec0:	8b 4d f4             	mov    -0xc(%ebp),%ecx
  101ec3:	89 c8                	mov    %ecx,%eax
  101ec5:	01 c0                	add    %eax,%eax
  101ec7:	01 c8                	add    %ecx,%eax
  101ec9:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
  101ed0:	01 c8                	add    %ecx,%eax
  101ed2:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
  101ed9:	01 c8                	add    %ecx,%eax
  101edb:	89 c1                	mov    %eax,%ecx
  101edd:	c1 e1 04             	shl    $0x4,%ecx
  101ee0:	01 c8                	add    %ecx,%eax
  101ee2:	c1 e0 02             	shl    $0x2,%eax
  101ee5:	01 f0                	add    %esi,%eax
  101ee7:	05 44 40 00 00       	add    $0x4044,%eax
  101eec:	89 10                	mov    %edx,(%eax)
  101eee:	c7 c0 44 80 10 00    	mov    $0x108044,%eax
  101ef4:	8b 10                	mov    (%eax),%edx
  101ef6:	c7 c1 60 84 10 00    	mov    $0x108460,%ecx
  101efc:	89 d0                	mov    %edx,%eax
  101efe:	01 c0                	add    %eax,%eax
  101f00:	01 d0                	add    %edx,%eax
  101f02:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  101f09:	01 d0                	add    %edx,%eax
  101f0b:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  101f12:	01 d0                	add    %edx,%eax
  101f14:	89 c2                	mov    %eax,%edx
  101f16:	c1 e2 04             	shl    $0x4,%edx
  101f19:	01 d0                	add    %edx,%eax
  101f1b:	c1 e0 02             	shl    $0x2,%eax
  101f1e:	01 c8                	add    %ecx,%eax
  101f20:	05 40 40 00 00       	add    $0x4040,%eax
  101f25:	8b 10                	mov    (%eax),%edx
  101f27:	c7 c6 60 84 10 00    	mov    $0x108460,%esi
  101f2d:	8b 4d f4             	mov    -0xc(%ebp),%ecx
  101f30:	89 c8                	mov    %ecx,%eax
  101f32:	01 c0                	add    %eax,%eax
  101f34:	01 c8                	add    %ecx,%eax
  101f36:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
  101f3d:	01 c8                	add    %ecx,%eax
  101f3f:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
  101f46:	01 c8                	add    %ecx,%eax
  101f48:	89 c1                	mov    %eax,%ecx
  101f4a:	c1 e1 04             	shl    $0x4,%ecx
  101f4d:	01 c8                	add    %ecx,%eax
  101f4f:	c1 e0 02             	shl    $0x2,%eax
  101f52:	01 f0                	add    %esi,%eax
  101f54:	05 40 40 00 00       	add    $0x4040,%eax
  101f59:	89 10                	mov    %edx,(%eax)
  101f5b:	8b 45 f4             	mov    -0xc(%ebp),%eax
  101f5e:	01 c0                	add    %eax,%eax
  101f60:	40                   	inc    %eax
  101f61:	c1 e0 03             	shl    $0x3,%eax
  101f64:	83 c8 03             	or     $0x3,%eax
  101f67:	89 c1                	mov    %eax,%ecx
  101f69:	c7 c6 60 84 10 00    	mov    $0x108460,%esi
  101f6f:	8b 55 f4             	mov    -0xc(%ebp),%edx
  101f72:	89 d0                	mov    %edx,%eax
  101f74:	01 c0                	add    %eax,%eax
  101f76:	01 d0                	add    %edx,%eax
  101f78:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  101f7f:	01 d0                	add    %edx,%eax
  101f81:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  101f88:	01 d0                	add    %edx,%eax
  101f8a:	89 c2                	mov    %eax,%edx
  101f8c:	c1 e2 04             	shl    $0x4,%edx
  101f8f:	01 d0                	add    %edx,%eax
  101f91:	c1 e0 02             	shl    $0x2,%eax
  101f94:	01 f0                	add    %esi,%eax
  101f96:	05 3c 40 00 00       	add    $0x403c,%eax
  101f9b:	89 08                	mov    %ecx,(%eax)
  101f9d:	c7 c0 44 80 10 00    	mov    $0x108044,%eax
  101fa3:	8b 10                	mov    (%eax),%edx
  101fa5:	c7 c1 60 84 10 00    	mov    $0x108460,%ecx
  101fab:	89 d0                	mov    %edx,%eax
  101fad:	01 c0                	add    %eax,%eax
  101faf:	01 d0                	add    %edx,%eax
  101fb1:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  101fb8:	01 d0                	add    %edx,%eax
  101fba:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  101fc1:	01 d0                	add    %edx,%eax
  101fc3:	89 c2                	mov    %eax,%edx
  101fc5:	c1 e2 04             	shl    $0x4,%edx
  101fc8:	01 d0                	add    %edx,%eax
  101fca:	c1 e0 02             	shl    $0x2,%eax
  101fcd:	01 c8                	add    %ecx,%eax
  101fcf:	05 38 40 00 00       	add    $0x4038,%eax
  101fd4:	8b 10                	mov    (%eax),%edx
  101fd6:	c7 c6 60 84 10 00    	mov    $0x108460,%esi
  101fdc:	8b 4d f4             	mov    -0xc(%ebp),%ecx
  101fdf:	89 c8                	mov    %ecx,%eax
  101fe1:	01 c0                	add    %eax,%eax
  101fe3:	01 c8                	add    %ecx,%eax
  101fe5:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
  101fec:	01 c8                	add    %ecx,%eax
  101fee:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
  101ff5:	01 c8                	add    %ecx,%eax
  101ff7:	89 c1                	mov    %eax,%ecx
  101ff9:	c1 e1 04             	shl    $0x4,%ecx
  101ffc:	01 c8                	add    %ecx,%eax
  101ffe:	c1 e0 02             	shl    $0x2,%eax
  102001:	01 f0                	add    %esi,%eax
  102003:	05 38 40 00 00       	add    $0x4038,%eax
  102008:	89 10                	mov    %edx,(%eax)
  10200a:	c7 c0 44 80 10 00    	mov    $0x108044,%eax
  102010:	8b 10                	mov    (%eax),%edx
  102012:	c7 c1 60 84 10 00    	mov    $0x108460,%ecx
  102018:	89 d0                	mov    %edx,%eax
  10201a:	01 c0                	add    %eax,%eax
  10201c:	01 d0                	add    %edx,%eax
  10201e:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  102025:	01 d0                	add    %edx,%eax
  102027:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  10202e:	01 d0                	add    %edx,%eax
  102030:	89 c2                	mov    %eax,%edx
  102032:	c1 e2 04             	shl    $0x4,%edx
  102035:	01 d0                	add    %edx,%eax
  102037:	c1 e0 02             	shl    $0x2,%eax
  10203a:	01 c8                	add    %ecx,%eax
  10203c:	05 2c 40 00 00       	add    $0x402c,%eax
  102041:	8b 10                	mov    (%eax),%edx
  102043:	c7 c6 60 84 10 00    	mov    $0x108460,%esi
  102049:	8b 4d f4             	mov    -0xc(%ebp),%ecx
  10204c:	89 c8                	mov    %ecx,%eax
  10204e:	01 c0                	add    %eax,%eax
  102050:	01 c8                	add    %ecx,%eax
  102052:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
  102059:	01 c8                	add    %ecx,%eax
  10205b:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
  102062:	01 c8                	add    %ecx,%eax
  102064:	89 c1                	mov    %eax,%ecx
  102066:	c1 e1 04             	shl    $0x4,%ecx
  102069:	01 c8                	add    %ecx,%eax
  10206b:	c1 e0 02             	shl    $0x2,%eax
  10206e:	01 f0                	add    %esi,%eax
  102070:	05 2c 40 00 00       	add    $0x402c,%eax
  102075:	89 10                	mov    %edx,(%eax)
  102077:	c7 c0 44 80 10 00    	mov    $0x108044,%eax
  10207d:	8b 10                	mov    (%eax),%edx
  10207f:	c7 c1 60 84 10 00    	mov    $0x108460,%ecx
  102085:	89 d0                	mov    %edx,%eax
  102087:	01 c0                	add    %eax,%eax
  102089:	01 d0                	add    %edx,%eax
  10208b:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  102092:	01 d0                	add    %edx,%eax
  102094:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  10209b:	01 d0                	add    %edx,%eax
  10209d:	89 c2                	mov    %eax,%edx
  10209f:	c1 e2 04             	shl    $0x4,%edx
  1020a2:	01 d0                	add    %edx,%eax
  1020a4:	c1 e0 02             	shl    $0x2,%eax
  1020a7:	01 c8                	add    %ecx,%eax
  1020a9:	05 28 40 00 00       	add    $0x4028,%eax
  1020ae:	8b 10                	mov    (%eax),%edx
  1020b0:	c7 c6 60 84 10 00    	mov    $0x108460,%esi
  1020b6:	8b 4d f4             	mov    -0xc(%ebp),%ecx
  1020b9:	89 c8                	mov    %ecx,%eax
  1020bb:	01 c0                	add    %eax,%eax
  1020bd:	01 c8                	add    %ecx,%eax
  1020bf:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
  1020c6:	01 c8                	add    %ecx,%eax
  1020c8:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
  1020cf:	01 c8                	add    %ecx,%eax
  1020d1:	89 c1                	mov    %eax,%ecx
  1020d3:	c1 e1 04             	shl    $0x4,%ecx
  1020d6:	01 c8                	add    %ecx,%eax
  1020d8:	c1 e0 02             	shl    $0x2,%eax
  1020db:	01 f0                	add    %esi,%eax
  1020dd:	05 28 40 00 00       	add    $0x4028,%eax
  1020e2:	89 10                	mov    %edx,(%eax)
  1020e4:	c7 c0 44 80 10 00    	mov    $0x108044,%eax
  1020ea:	8b 10                	mov    (%eax),%edx
  1020ec:	c7 c1 60 84 10 00    	mov    $0x108460,%ecx
  1020f2:	89 d0                	mov    %edx,%eax
  1020f4:	01 c0                	add    %eax,%eax
  1020f6:	01 d0                	add    %edx,%eax
  1020f8:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  1020ff:	01 d0                	add    %edx,%eax
  102101:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  102108:	01 d0                	add    %edx,%eax
  10210a:	89 c2                	mov    %eax,%edx
  10210c:	c1 e2 04             	shl    $0x4,%edx
  10210f:	01 d0                	add    %edx,%eax
  102111:	c1 e0 02             	shl    $0x2,%eax
  102114:	01 c8                	add    %ecx,%eax
  102116:	05 24 40 00 00       	add    $0x4024,%eax
  10211b:	8b 10                	mov    (%eax),%edx
  10211d:	c7 c6 60 84 10 00    	mov    $0x108460,%esi
  102123:	8b 4d f4             	mov    -0xc(%ebp),%ecx
  102126:	89 c8                	mov    %ecx,%eax
  102128:	01 c0                	add    %eax,%eax
  10212a:	01 c8                	add    %ecx,%eax
  10212c:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
  102133:	01 c8                	add    %ecx,%eax
  102135:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
  10213c:	01 c8                	add    %ecx,%eax
  10213e:	89 c1                	mov    %eax,%ecx
  102140:	c1 e1 04             	shl    $0x4,%ecx
  102143:	01 c8                	add    %ecx,%eax
  102145:	c1 e0 02             	shl    $0x2,%eax
  102148:	01 f0                	add    %esi,%eax
  10214a:	05 24 40 00 00       	add    $0x4024,%eax
  10214f:	89 10                	mov    %edx,(%eax)
  102151:	c7 c0 44 80 10 00    	mov    $0x108044,%eax
  102157:	8b 10                	mov    (%eax),%edx
  102159:	c7 c1 60 84 10 00    	mov    $0x108460,%ecx
  10215f:	89 d0                	mov    %edx,%eax
  102161:	01 c0                	add    %eax,%eax
  102163:	01 d0                	add    %edx,%eax
  102165:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  10216c:	01 d0                	add    %edx,%eax
  10216e:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  102175:	01 d0                	add    %edx,%eax
  102177:	89 c2                	mov    %eax,%edx
  102179:	c1 e2 04             	shl    $0x4,%edx
  10217c:	01 d0                	add    %edx,%eax
  10217e:	c1 e0 02             	shl    $0x2,%eax
  102181:	01 c8                	add    %ecx,%eax
  102183:	05 20 40 00 00       	add    $0x4020,%eax
  102188:	8b 10                	mov    (%eax),%edx
  10218a:	c7 c6 60 84 10 00    	mov    $0x108460,%esi
  102190:	8b 4d f4             	mov    -0xc(%ebp),%ecx
  102193:	89 c8                	mov    %ecx,%eax
  102195:	01 c0                	add    %eax,%eax
  102197:	01 c8                	add    %ecx,%eax
  102199:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
  1021a0:	01 c8                	add    %ecx,%eax
  1021a2:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
  1021a9:	01 c8                	add    %ecx,%eax
  1021ab:	89 c1                	mov    %eax,%ecx
  1021ad:	c1 e1 04             	shl    $0x4,%ecx
  1021b0:	01 c8                	add    %ecx,%eax
  1021b2:	c1 e0 02             	shl    $0x2,%eax
  1021b5:	01 f0                	add    %esi,%eax
  1021b7:	05 20 40 00 00       	add    $0x4020,%eax
  1021bc:	89 10                	mov    %edx,(%eax)
  1021be:	c7 c0 44 80 10 00    	mov    $0x108044,%eax
  1021c4:	8b 10                	mov    (%eax),%edx
  1021c6:	c7 c1 60 84 10 00    	mov    $0x108460,%ecx
  1021cc:	89 d0                	mov    %edx,%eax
  1021ce:	01 c0                	add    %eax,%eax
  1021d0:	01 d0                	add    %edx,%eax
  1021d2:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  1021d9:	01 d0                	add    %edx,%eax
  1021db:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  1021e2:	01 d0                	add    %edx,%eax
  1021e4:	89 c2                	mov    %eax,%edx
  1021e6:	c1 e2 04             	shl    $0x4,%edx
  1021e9:	01 d0                	add    %edx,%eax
  1021eb:	c1 e0 02             	shl    $0x2,%eax
  1021ee:	01 c8                	add    %ecx,%eax
  1021f0:	05 1c 40 00 00       	add    $0x401c,%eax
  1021f5:	8b 10                	mov    (%eax),%edx
  1021f7:	c7 c6 60 84 10 00    	mov    $0x108460,%esi
  1021fd:	8b 4d f4             	mov    -0xc(%ebp),%ecx
  102200:	89 c8                	mov    %ecx,%eax
  102202:	01 c0                	add    %eax,%eax
  102204:	01 c8                	add    %ecx,%eax
  102206:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
  10220d:	01 c8                	add    %ecx,%eax
  10220f:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
  102216:	01 c8                	add    %ecx,%eax
  102218:	89 c1                	mov    %eax,%ecx
  10221a:	c1 e1 04             	shl    $0x4,%ecx
  10221d:	01 c8                	add    %ecx,%eax
  10221f:	c1 e0 02             	shl    $0x2,%eax
  102222:	01 f0                	add    %esi,%eax
  102224:	05 1c 40 00 00       	add    $0x401c,%eax
  102229:	89 10                	mov    %edx,(%eax)
  10222b:	c7 c0 44 80 10 00    	mov    $0x108044,%eax
  102231:	8b 10                	mov    (%eax),%edx
  102233:	c7 c1 60 84 10 00    	mov    $0x108460,%ecx
  102239:	89 d0                	mov    %edx,%eax
  10223b:	01 c0                	add    %eax,%eax
  10223d:	01 d0                	add    %edx,%eax
  10223f:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  102246:	01 d0                	add    %edx,%eax
  102248:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  10224f:	01 d0                	add    %edx,%eax
  102251:	89 c2                	mov    %eax,%edx
  102253:	c1 e2 04             	shl    $0x4,%edx
  102256:	01 d0                	add    %edx,%eax
  102258:	c1 e0 02             	shl    $0x2,%eax
  10225b:	01 c8                	add    %ecx,%eax
  10225d:	05 18 40 00 00       	add    $0x4018,%eax
  102262:	8b 10                	mov    (%eax),%edx
  102264:	c7 c6 60 84 10 00    	mov    $0x108460,%esi
  10226a:	8b 4d f4             	mov    -0xc(%ebp),%ecx
  10226d:	89 c8                	mov    %ecx,%eax
  10226f:	01 c0                	add    %eax,%eax
  102271:	01 c8                	add    %ecx,%eax
  102273:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
  10227a:	01 c8                	add    %ecx,%eax
  10227c:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
  102283:	01 c8                	add    %ecx,%eax
  102285:	89 c1                	mov    %eax,%ecx
  102287:	c1 e1 04             	shl    $0x4,%ecx
  10228a:	01 c8                	add    %ecx,%eax
  10228c:	c1 e0 02             	shl    $0x2,%eax
  10228f:	01 f0                	add    %esi,%eax
  102291:	05 18 40 00 00       	add    $0x4018,%eax
  102296:	89 10                	mov    %edx,(%eax)
  102298:	c7 c0 44 80 10 00    	mov    $0x108044,%eax
  10229e:	8b 10                	mov    (%eax),%edx
  1022a0:	c7 c1 60 84 10 00    	mov    $0x108460,%ecx
  1022a6:	89 d0                	mov    %edx,%eax
  1022a8:	01 c0                	add    %eax,%eax
  1022aa:	01 d0                	add    %edx,%eax
  1022ac:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  1022b3:	01 d0                	add    %edx,%eax
  1022b5:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  1022bc:	01 d0                	add    %edx,%eax
  1022be:	89 c2                	mov    %eax,%edx
  1022c0:	c1 e2 04             	shl    $0x4,%edx
  1022c3:	01 d0                	add    %edx,%eax
  1022c5:	c1 e0 02             	shl    $0x2,%eax
  1022c8:	01 c8                	add    %ecx,%eax
  1022ca:	05 14 40 00 00       	add    $0x4014,%eax
  1022cf:	8b 10                	mov    (%eax),%edx
  1022d1:	c7 c6 60 84 10 00    	mov    $0x108460,%esi
  1022d7:	8b 4d f4             	mov    -0xc(%ebp),%ecx
  1022da:	89 c8                	mov    %ecx,%eax
  1022dc:	01 c0                	add    %eax,%eax
  1022de:	01 c8                	add    %ecx,%eax
  1022e0:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
  1022e7:	01 c8                	add    %ecx,%eax
  1022e9:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
  1022f0:	01 c8                	add    %ecx,%eax
  1022f2:	89 c1                	mov    %eax,%ecx
  1022f4:	c1 e1 04             	shl    $0x4,%ecx
  1022f7:	01 c8                	add    %ecx,%eax
  1022f9:	c1 e0 02             	shl    $0x2,%eax
  1022fc:	01 f0                	add    %esi,%eax
  1022fe:	05 14 40 00 00       	add    $0x4014,%eax
  102303:	89 10                	mov    %edx,(%eax)
  102305:	c7 c0 44 80 10 00    	mov    $0x108044,%eax
  10230b:	8b 10                	mov    (%eax),%edx
  10230d:	c7 c1 60 84 10 00    	mov    $0x108460,%ecx
  102313:	89 d0                	mov    %edx,%eax
  102315:	01 c0                	add    %eax,%eax
  102317:	01 d0                	add    %edx,%eax
  102319:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  102320:	01 d0                	add    %edx,%eax
  102322:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  102329:	01 d0                	add    %edx,%eax
  10232b:	89 c2                	mov    %eax,%edx
  10232d:	c1 e2 04             	shl    $0x4,%edx
  102330:	01 d0                	add    %edx,%eax
  102332:	c1 e0 02             	shl    $0x2,%eax
  102335:	01 c8                	add    %ecx,%eax
  102337:	05 10 40 00 00       	add    $0x4010,%eax
  10233c:	8b 10                	mov    (%eax),%edx
  10233e:	c7 c6 60 84 10 00    	mov    $0x108460,%esi
  102344:	8b 4d f4             	mov    -0xc(%ebp),%ecx
  102347:	89 c8                	mov    %ecx,%eax
  102349:	01 c0                	add    %eax,%eax
  10234b:	01 c8                	add    %ecx,%eax
  10234d:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
  102354:	01 c8                	add    %ecx,%eax
  102356:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
  10235d:	01 c8                	add    %ecx,%eax
  10235f:	89 c1                	mov    %eax,%ecx
  102361:	c1 e1 04             	shl    $0x4,%ecx
  102364:	01 c8                	add    %ecx,%eax
  102366:	c1 e0 02             	shl    $0x2,%eax
  102369:	01 f0                	add    %esi,%eax
  10236b:	05 10 40 00 00       	add    $0x4010,%eax
  102370:	89 10                	mov    %edx,(%eax)
  102372:	8b 45 f4             	mov    -0xc(%ebp),%eax
  102375:	40                   	inc    %eax
  102376:	01 c0                	add    %eax,%eax
  102378:	c1 e0 03             	shl    $0x3,%eax
  10237b:	83 c8 03             	or     $0x3,%eax
  10237e:	89 c1                	mov    %eax,%ecx
  102380:	c7 c6 60 84 10 00    	mov    $0x108460,%esi
  102386:	8b 55 f4             	mov    -0xc(%ebp),%edx
  102389:	89 d0                	mov    %edx,%eax
  10238b:	01 c0                	add    %eax,%eax
  10238d:	01 d0                	add    %edx,%eax
  10238f:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  102396:	01 d0                	add    %edx,%eax
  102398:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  10239f:	01 d0                	add    %edx,%eax
  1023a1:	89 c2                	mov    %eax,%edx
  1023a3:	c1 e2 04             	shl    $0x4,%edx
  1023a6:	01 d0                	add    %edx,%eax
  1023a8:	c1 e0 02             	shl    $0x2,%eax
  1023ab:	01 f0                	add    %esi,%eax
  1023ad:	05 0c 40 00 00       	add    $0x400c,%eax
  1023b2:	89 08                	mov    %ecx,(%eax)
  1023b4:	c7 c0 44 80 10 00    	mov    $0x108044,%eax
  1023ba:	8b 10                	mov    (%eax),%edx
  1023bc:	c7 c1 60 84 10 00    	mov    $0x108460,%ecx
  1023c2:	89 d0                	mov    %edx,%eax
  1023c4:	01 c0                	add    %eax,%eax
  1023c6:	01 d0                	add    %edx,%eax
  1023c8:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  1023cf:	01 d0                	add    %edx,%eax
  1023d1:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  1023d8:	01 d0                	add    %edx,%eax
  1023da:	89 c2                	mov    %eax,%edx
  1023dc:	c1 e2 04             	shl    $0x4,%edx
  1023df:	01 d0                	add    %edx,%eax
  1023e1:	c1 e0 02             	shl    $0x2,%eax
  1023e4:	01 c8                	add    %ecx,%eax
  1023e6:	05 08 40 00 00       	add    $0x4008,%eax
  1023eb:	8b 10                	mov    (%eax),%edx
  1023ed:	c7 c6 60 84 10 00    	mov    $0x108460,%esi
  1023f3:	8b 4d f4             	mov    -0xc(%ebp),%ecx
  1023f6:	89 c8                	mov    %ecx,%eax
  1023f8:	01 c0                	add    %eax,%eax
  1023fa:	01 c8                	add    %ecx,%eax
  1023fc:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
  102403:	01 c8                	add    %ecx,%eax
  102405:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
  10240c:	01 c8                	add    %ecx,%eax
  10240e:	89 c1                	mov    %eax,%ecx
  102410:	c1 e1 04             	shl    $0x4,%ecx
  102413:	01 c8                	add    %ecx,%eax
  102415:	c1 e0 02             	shl    $0x2,%eax
  102418:	01 f0                	add    %esi,%eax
  10241a:	05 08 40 00 00       	add    $0x4008,%eax
  10241f:	89 10                	mov    %edx,(%eax)
  102421:	c7 c0 44 80 10 00    	mov    $0x108044,%eax
  102427:	8b 10                	mov    (%eax),%edx
  102429:	c7 c1 60 84 10 00    	mov    $0x108460,%ecx
  10242f:	89 d0                	mov    %edx,%eax
  102431:	01 c0                	add    %eax,%eax
  102433:	01 d0                	add    %edx,%eax
  102435:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  10243c:	01 d0                	add    %edx,%eax
  10243e:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  102445:	01 d0                	add    %edx,%eax
  102447:	89 c2                	mov    %eax,%edx
  102449:	c1 e2 04             	shl    $0x4,%edx
  10244c:	01 d0                	add    %edx,%eax
  10244e:	c1 e0 02             	shl    $0x2,%eax
  102451:	01 c8                	add    %ecx,%eax
  102453:	05 04 40 00 00       	add    $0x4004,%eax
  102458:	8b 10                	mov    (%eax),%edx
  10245a:	c7 c6 60 84 10 00    	mov    $0x108460,%esi
  102460:	8b 4d f4             	mov    -0xc(%ebp),%ecx
  102463:	89 c8                	mov    %ecx,%eax
  102465:	01 c0                	add    %eax,%eax
  102467:	01 c8                	add    %ecx,%eax
  102469:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
  102470:	01 c8                	add    %ecx,%eax
  102472:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
  102479:	01 c8                	add    %ecx,%eax
  10247b:	89 c1                	mov    %eax,%ecx
  10247d:	c1 e1 04             	shl    $0x4,%ecx
  102480:	01 c8                	add    %ecx,%eax
  102482:	c1 e0 02             	shl    $0x2,%eax
  102485:	01 f0                	add    %esi,%eax
  102487:	05 04 40 00 00       	add    $0x4004,%eax
  10248c:	89 10                	mov    %edx,(%eax)
  10248e:	c7 c0 44 80 10 00    	mov    $0x108044,%eax
  102494:	8b 10                	mov    (%eax),%edx
  102496:	c7 c1 60 84 10 00    	mov    $0x108460,%ecx
  10249c:	89 d0                	mov    %edx,%eax
  10249e:	01 c0                	add    %eax,%eax
  1024a0:	01 d0                	add    %edx,%eax
  1024a2:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  1024a9:	01 d0                	add    %edx,%eax
  1024ab:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  1024b2:	01 d0                	add    %edx,%eax
  1024b4:	89 c2                	mov    %eax,%edx
  1024b6:	c1 e2 04             	shl    $0x4,%edx
  1024b9:	01 d0                	add    %edx,%eax
  1024bb:	c1 e0 02             	shl    $0x2,%eax
  1024be:	01 c8                	add    %ecx,%eax
  1024c0:	05 00 40 00 00       	add    $0x4000,%eax
  1024c5:	8b 10                	mov    (%eax),%edx
  1024c7:	c7 c6 60 84 10 00    	mov    $0x108460,%esi
  1024cd:	8b 4d f4             	mov    -0xc(%ebp),%ecx
  1024d0:	89 c8                	mov    %ecx,%eax
  1024d2:	01 c0                	add    %eax,%eax
  1024d4:	01 c8                	add    %ecx,%eax
  1024d6:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
  1024dd:	01 c8                	add    %ecx,%eax
  1024df:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
  1024e6:	01 c8                	add    %ecx,%eax
  1024e8:	89 c1                	mov    %eax,%ecx
  1024ea:	c1 e1 04             	shl    $0x4,%ecx
  1024ed:	01 c8                	add    %ecx,%eax
  1024ef:	c1 e0 02             	shl    $0x2,%eax
  1024f2:	01 f0                	add    %esi,%eax
  1024f4:	05 00 40 00 00       	add    $0x4000,%eax
  1024f9:	89 10                	mov    %edx,(%eax)
  1024fb:	c7 c1 60 84 10 00    	mov    $0x108460,%ecx
  102501:	8b 55 f4             	mov    -0xc(%ebp),%edx
  102504:	89 d0                	mov    %edx,%eax
  102506:	01 c0                	add    %eax,%eax
  102508:	01 d0                	add    %edx,%eax
  10250a:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  102511:	01 d0                	add    %edx,%eax
  102513:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  10251a:	01 d0                	add    %edx,%eax
  10251c:	89 c2                	mov    %eax,%edx
  10251e:	c1 e2 04             	shl    $0x4,%edx
  102521:	01 d0                	add    %edx,%eax
  102523:	c1 e0 02             	shl    $0x2,%eax
  102526:	01 c8                	add    %ecx,%eax
  102528:	05 2c 40 00 00       	add    $0x402c,%eax
  10252d:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
  102533:	c7 c0 44 80 10 00    	mov    $0x108044,%eax
  102539:	8b 08                	mov    (%eax),%ecx
  10253b:	8b 55 f4             	mov    -0xc(%ebp),%edx
  10253e:	c7 c3 60 84 10 00    	mov    $0x108460,%ebx
  102544:	89 c8                	mov    %ecx,%eax
  102546:	01 c0                	add    %eax,%eax
  102548:	01 c8                	add    %ecx,%eax
  10254a:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
  102551:	01 c8                	add    %ecx,%eax
  102553:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
  10255a:	01 c8                	add    %ecx,%eax
  10255c:	89 c1                	mov    %eax,%ecx
  10255e:	c1 e1 04             	shl    $0x4,%ecx
  102561:	01 c8                	add    %ecx,%eax
  102563:	c1 e0 02             	shl    $0x2,%eax
  102566:	01 d8                	add    %ebx,%eax
  102568:	05 2c 40 00 00       	add    $0x402c,%eax
  10256d:	89 10                	mov    %edx,(%eax)
  10256f:	eb 3e                	jmp    1025af <syscallFork+0xb6e>
  102571:	c7 c0 44 80 10 00    	mov    $0x108044,%eax
  102577:	8b 10                	mov    (%eax),%edx
  102579:	c7 c1 60 84 10 00    	mov    $0x108460,%ecx
  10257f:	89 d0                	mov    %edx,%eax
  102581:	01 c0                	add    %eax,%eax
  102583:	01 d0                	add    %edx,%eax
  102585:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  10258c:	01 d0                	add    %edx,%eax
  10258e:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  102595:	01 d0                	add    %edx,%eax
  102597:	89 c2                	mov    %eax,%edx
  102599:	c1 e2 04             	shl    $0x4,%edx
  10259c:	01 d0                	add    %edx,%eax
  10259e:	c1 e0 02             	shl    $0x2,%eax
  1025a1:	01 c8                	add    %ecx,%eax
  1025a3:	05 2c 40 00 00       	add    $0x402c,%eax
  1025a8:	c7 00 ff ff ff ff    	movl   $0xffffffff,(%eax)
  1025ae:	90                   	nop
  1025af:	83 c4 10             	add    $0x10,%esp
  1025b2:	5b                   	pop    %ebx
  1025b3:	5e                   	pop    %esi
  1025b4:	5d                   	pop    %ebp
  1025b5:	c3                   	ret    

001025b6 <syscallExec>:
  1025b6:	55                   	push   %ebp
  1025b7:	89 e5                	mov    %esp,%ebp
  1025b9:	53                   	push   %ebx
  1025ba:	81 ec a4 00 00 00    	sub    $0xa4,%esp
  1025c0:	e8 ef 02 00 00       	call   1028b4 <__x86.get_pc_thunk.dx>
  1025c5:	81 c2 3b 3a 00 00    	add    $0x3a3b,%edx
  1025cb:	8b 45 08             	mov    0x8(%ebp),%eax
  1025ce:	8b 40 0c             	mov    0xc(%eax),%eax
  1025d1:	89 45 e4             	mov    %eax,-0x1c(%ebp)
  1025d4:	8b 45 08             	mov    0x8(%ebp),%eax
  1025d7:	8b 40 28             	mov    0x28(%eax),%eax
  1025da:	89 45 ec             	mov    %eax,-0x14(%ebp)
  1025dd:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  1025e4:	c6 45 f3 00          	movb   $0x0,-0xd(%ebp)
  1025e8:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%ebp)
  1025ef:	c7 85 60 ff ff ff 00 	movl   $0x0,-0xa0(%ebp)
  1025f6:	00 00 00 
  1025f9:	8e 45 e4             	mov    -0x1c(%ebp),%es
  1025fc:	8b 4d f4             	mov    -0xc(%ebp),%ecx
  1025ff:	8b 45 ec             	mov    -0x14(%ebp),%eax
  102602:	01 c8                	add    %ecx,%eax
  102604:	26 8a 00             	mov    %es:(%eax),%al
  102607:	88 45 f3             	mov    %al,-0xd(%ebp)
  10260a:	eb 21                	jmp    10262d <syscallExec+0x77>
  10260c:	8d 8d 64 ff ff ff    	lea    -0x9c(%ebp),%ecx
  102612:	8b 45 f4             	mov    -0xc(%ebp),%eax
  102615:	01 c1                	add    %eax,%ecx
  102617:	8a 45 f3             	mov    -0xd(%ebp),%al
  10261a:	88 01                	mov    %al,(%ecx)
  10261c:	ff 45 f4             	incl   -0xc(%ebp)
  10261f:	8b 4d f4             	mov    -0xc(%ebp),%ecx
  102622:	8b 45 ec             	mov    -0x14(%ebp),%eax
  102625:	01 c8                	add    %ecx,%eax
  102627:	26 8a 00             	mov    %es:(%eax),%al
  10262a:	88 45 f3             	mov    %al,-0xd(%ebp)
  10262d:	80 7d f3 00          	cmpb   $0x0,-0xd(%ebp)
  102631:	75 d9                	jne    10260c <syscallExec+0x56>
  102633:	8d 8d 64 ff ff ff    	lea    -0x9c(%ebp),%ecx
  102639:	8b 45 f4             	mov    -0xc(%ebp),%eax
  10263c:	01 c8                	add    %ecx,%eax
  10263e:	c6 00 00             	movb   $0x0,(%eax)
  102641:	c7 c0 44 80 10 00    	mov    $0x108044,%eax
  102647:	8b 00                	mov    (%eax),%eax
  102649:	40                   	inc    %eax
  10264a:	c1 e0 14             	shl    $0x14,%eax
  10264d:	89 c1                	mov    %eax,%ecx
  10264f:	83 ec 04             	sub    $0x4,%esp
  102652:	8d 85 60 ff ff ff    	lea    -0xa0(%ebp),%eax
  102658:	50                   	push   %eax
  102659:	51                   	push   %ecx
  10265a:	8d 85 64 ff ff ff    	lea    -0x9c(%ebp),%eax
  102660:	50                   	push   %eax
  102661:	89 d3                	mov    %edx,%ebx
  102663:	e8 00 0e 00 00       	call   103468 <loadElf>
  102668:	83 c4 10             	add    $0x10,%esp
  10266b:	89 45 e8             	mov    %eax,-0x18(%ebp)
  10266e:	83 7d e8 ff          	cmpl   $0xffffffff,-0x18(%ebp)
  102672:	75 0c                	jne    102680 <syscallExec+0xca>
  102674:	8b 45 08             	mov    0x8(%ebp),%eax
  102677:	c7 40 2c ff ff ff ff 	movl   $0xffffffff,0x2c(%eax)
  10267e:	eb 0d                	jmp    10268d <syscallExec+0xd7>
  102680:	8b 95 60 ff ff ff    	mov    -0xa0(%ebp),%edx
  102686:	8b 45 08             	mov    0x8(%ebp),%eax
  102689:	89 50 38             	mov    %edx,0x38(%eax)
  10268c:	90                   	nop
  10268d:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  102690:	c9                   	leave  
  102691:	c3                   	ret    

00102692 <syscallSleep>:
  102692:	55                   	push   %ebp
  102693:	89 e5                	mov    %esp,%ebp
  102695:	53                   	push   %ebx
  102696:	e8 19 02 00 00       	call   1028b4 <__x86.get_pc_thunk.dx>
  10269b:	81 c2 65 39 00 00    	add    $0x3965,%edx
  1026a1:	8b 45 08             	mov    0x8(%ebp),%eax
  1026a4:	8b 40 28             	mov    0x28(%eax),%eax
  1026a7:	85 c0                	test   %eax,%eax
  1026a9:	0f 84 81 00 00 00    	je     102730 <syscallSleep+0x9e>
  1026af:	c7 c0 44 80 10 00    	mov    $0x108044,%eax
  1026b5:	8b 08                	mov    (%eax),%ecx
  1026b7:	c7 c3 60 84 10 00    	mov    $0x108460,%ebx
  1026bd:	89 c8                	mov    %ecx,%eax
  1026bf:	01 c0                	add    %eax,%eax
  1026c1:	01 c8                	add    %ecx,%eax
  1026c3:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
  1026ca:	01 c8                	add    %ecx,%eax
  1026cc:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
  1026d3:	01 c8                	add    %ecx,%eax
  1026d5:	89 c1                	mov    %eax,%ecx
  1026d7:	c1 e1 04             	shl    $0x4,%ecx
  1026da:	01 c8                	add    %ecx,%eax
  1026dc:	c1 e0 02             	shl    $0x2,%eax
  1026df:	01 d8                	add    %ebx,%eax
  1026e1:	05 54 40 00 00       	add    $0x4054,%eax
  1026e6:	c7 00 02 00 00 00    	movl   $0x2,(%eax)
  1026ec:	8b 45 08             	mov    0x8(%ebp),%eax
  1026ef:	8b 58 28             	mov    0x28(%eax),%ebx
  1026f2:	c7 c0 44 80 10 00    	mov    $0x108044,%eax
  1026f8:	8b 08                	mov    (%eax),%ecx
  1026fa:	c7 c2 60 84 10 00    	mov    $0x108460,%edx
  102700:	89 c8                	mov    %ecx,%eax
  102702:	01 c0                	add    %eax,%eax
  102704:	01 c8                	add    %ecx,%eax
  102706:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
  10270d:	01 c8                	add    %ecx,%eax
  10270f:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
  102716:	01 c8                	add    %ecx,%eax
  102718:	89 c1                	mov    %eax,%ecx
  10271a:	c1 e1 04             	shl    $0x4,%ecx
  10271d:	01 c8                	add    %ecx,%eax
  10271f:	c1 e0 02             	shl    $0x2,%eax
  102722:	01 d0                	add    %edx,%eax
  102724:	05 5c 40 00 00       	add    $0x405c,%eax
  102729:	89 18                	mov    %ebx,(%eax)
  10272b:	cd 20                	int    $0x20
  10272d:	90                   	nop
  10272e:	eb 01                	jmp    102731 <syscallSleep+0x9f>
  102730:	90                   	nop
  102731:	5b                   	pop    %ebx
  102732:	5d                   	pop    %ebp
  102733:	c3                   	ret    

00102734 <syscallExit>:
  102734:	55                   	push   %ebp
  102735:	89 e5                	mov    %esp,%ebp
  102737:	e8 09 dd ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  10273c:	05 c4 38 00 00       	add    $0x38c4,%eax
  102741:	c7 c2 44 80 10 00    	mov    $0x108044,%edx
  102747:	8b 12                	mov    (%edx),%edx
  102749:	c7 c1 60 84 10 00    	mov    $0x108460,%ecx
  10274f:	89 d0                	mov    %edx,%eax
  102751:	01 c0                	add    %eax,%eax
  102753:	01 d0                	add    %edx,%eax
  102755:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  10275c:	01 d0                	add    %edx,%eax
  10275e:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  102765:	01 d0                	add    %edx,%eax
  102767:	89 c2                	mov    %eax,%edx
  102769:	c1 e2 04             	shl    $0x4,%edx
  10276c:	01 d0                	add    %edx,%eax
  10276e:	c1 e0 02             	shl    $0x2,%eax
  102771:	01 c8                	add    %ecx,%eax
  102773:	05 54 40 00 00       	add    $0x4054,%eax
  102778:	c7 00 03 00 00 00    	movl   $0x3,(%eax)
  10277e:	cd 20                	int    $0x20
  102780:	90                   	nop
  102781:	5d                   	pop    %ebp
  102782:	c3                   	ret    

00102783 <syscallSem>:
  102783:	55                   	push   %ebp
  102784:	89 e5                	mov    %esp,%ebp
  102786:	83 ec 08             	sub    $0x8,%esp
  102789:	e8 b7 dc ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  10278e:	05 72 38 00 00       	add    $0x3872,%eax
  102793:	8b 45 08             	mov    0x8(%ebp),%eax
  102796:	8b 40 28             	mov    0x28(%eax),%eax
  102799:	83 f8 01             	cmp    $0x1,%eax
  10279c:	74 21                	je     1027bf <syscallSem+0x3c>
  10279e:	83 f8 01             	cmp    $0x1,%eax
  1027a1:	72 0c                	jb     1027af <syscallSem+0x2c>
  1027a3:	83 f8 02             	cmp    $0x2,%eax
  1027a6:	74 27                	je     1027cf <syscallSem+0x4c>
  1027a8:	83 f8 03             	cmp    $0x3,%eax
  1027ab:	74 32                	je     1027df <syscallSem+0x5c>
  1027ad:	eb 3f                	jmp    1027ee <syscallSem+0x6b>
  1027af:	83 ec 0c             	sub    $0xc,%esp
  1027b2:	ff 75 08             	pushl  0x8(%ebp)
  1027b5:	e8 37 00 00 00       	call   1027f1 <syscallSemInit>
  1027ba:	83 c4 10             	add    $0x10,%esp
  1027bd:	eb 2f                	jmp    1027ee <syscallSem+0x6b>
  1027bf:	83 ec 0c             	sub    $0xc,%esp
  1027c2:	ff 75 08             	pushl  0x8(%ebp)
  1027c5:	e8 37 00 00 00       	call   102801 <syscallSemWait>
  1027ca:	83 c4 10             	add    $0x10,%esp
  1027cd:	eb 1f                	jmp    1027ee <syscallSem+0x6b>
  1027cf:	83 ec 0c             	sub    $0xc,%esp
  1027d2:	ff 75 08             	pushl  0x8(%ebp)
  1027d5:	e8 37 00 00 00       	call   102811 <syscallSemPost>
  1027da:	83 c4 10             	add    $0x10,%esp
  1027dd:	eb 0f                	jmp    1027ee <syscallSem+0x6b>
  1027df:	83 ec 0c             	sub    $0xc,%esp
  1027e2:	ff 75 08             	pushl  0x8(%ebp)
  1027e5:	e8 37 00 00 00       	call   102821 <syscallSemDestroy>
  1027ea:	83 c4 10             	add    $0x10,%esp
  1027ed:	90                   	nop
  1027ee:	90                   	nop
  1027ef:	c9                   	leave  
  1027f0:	c3                   	ret    

001027f1 <syscallSemInit>:
  1027f1:	55                   	push   %ebp
  1027f2:	89 e5                	mov    %esp,%ebp
  1027f4:	e8 4c dc ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  1027f9:	05 07 38 00 00       	add    $0x3807,%eax
  1027fe:	90                   	nop
  1027ff:	5d                   	pop    %ebp
  102800:	c3                   	ret    

00102801 <syscallSemWait>:
  102801:	55                   	push   %ebp
  102802:	89 e5                	mov    %esp,%ebp
  102804:	e8 3c dc ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  102809:	05 f7 37 00 00       	add    $0x37f7,%eax
  10280e:	90                   	nop
  10280f:	5d                   	pop    %ebp
  102810:	c3                   	ret    

00102811 <syscallSemPost>:
  102811:	55                   	push   %ebp
  102812:	89 e5                	mov    %esp,%ebp
  102814:	e8 2c dc ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  102819:	05 e7 37 00 00       	add    $0x37e7,%eax
  10281e:	90                   	nop
  10281f:	5d                   	pop    %ebp
  102820:	c3                   	ret    

00102821 <syscallSemDestroy>:
  102821:	55                   	push   %ebp
  102822:	89 e5                	mov    %esp,%ebp
  102824:	e8 1c dc ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  102829:	05 d7 37 00 00       	add    $0x37d7,%eax
  10282e:	90                   	nop
  10282f:	5d                   	pop    %ebp
  102830:	c3                   	ret    

00102831 <syscallGetPid>:
  102831:	55                   	push   %ebp
  102832:	89 e5                	mov    %esp,%ebp
  102834:	53                   	push   %ebx
  102835:	e8 0b dc ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  10283a:	05 c6 37 00 00       	add    $0x37c6,%eax
  10283f:	c7 c2 44 80 10 00    	mov    $0x108044,%edx
  102845:	8b 0a                	mov    (%edx),%ecx
  102847:	c7 c2 44 80 10 00    	mov    $0x108044,%edx
  10284d:	8b 12                	mov    (%edx),%edx
  10284f:	c7 c3 60 84 10 00    	mov    $0x108460,%ebx
  102855:	89 d0                	mov    %edx,%eax
  102857:	01 c0                	add    %eax,%eax
  102859:	01 d0                	add    %edx,%eax
  10285b:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  102862:	01 d0                	add    %edx,%eax
  102864:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  10286b:	01 d0                	add    %edx,%eax
  10286d:	89 c2                	mov    %eax,%edx
  10286f:	c1 e2 04             	shl    $0x4,%edx
  102872:	01 d0                	add    %edx,%eax
  102874:	c1 e0 02             	shl    $0x2,%eax
  102877:	01 d8                	add    %ebx,%eax
  102879:	05 2c 40 00 00       	add    $0x402c,%eax
  10287e:	89 08                	mov    %ecx,(%eax)
  102880:	90                   	nop
  102881:	5b                   	pop    %ebx
  102882:	5d                   	pop    %ebp
  102883:	c3                   	ret    

00102884 <GProtectFaultHandle>:
  102884:	55                   	push   %ebp
  102885:	89 e5                	mov    %esp,%ebp
  102887:	53                   	push   %ebx
  102888:	83 ec 04             	sub    $0x4,%esp
  10288b:	e8 b5 db ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  102890:	05 70 37 00 00       	add    $0x3770,%eax
  102895:	83 ec 08             	sub    $0x8,%esp
  102898:	68 11 02 00 00       	push   $0x211
  10289d:	8d 90 c0 e2 ff ff    	lea    -0x1d40(%eax),%edx
  1028a3:	52                   	push   %edx
  1028a4:	89 c3                	mov    %eax,%ebx
  1028a6:	e8 e6 16 00 00       	call   103f91 <abort>
  1028ab:	83 c4 10             	add    $0x10,%esp
  1028ae:	90                   	nop
  1028af:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  1028b2:	c9                   	leave  
  1028b3:	c3                   	ret    

001028b4 <__x86.get_pc_thunk.dx>:
  1028b4:	8b 14 24             	mov    (%esp),%edx
  1028b7:	c3                   	ret    

001028b8 <inByte>:
  1028b8:	55                   	push   %ebp
  1028b9:	89 e5                	mov    %esp,%ebp
  1028bb:	83 ec 14             	sub    $0x14,%esp
  1028be:	e8 82 db ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  1028c3:	05 3d 37 00 00       	add    $0x373d,%eax
  1028c8:	8b 45 08             	mov    0x8(%ebp),%eax
  1028cb:	66 89 45 ec          	mov    %ax,-0x14(%ebp)
  1028cf:	8b 45 ec             	mov    -0x14(%ebp),%eax
  1028d2:	89 c2                	mov    %eax,%edx
  1028d4:	ec                   	in     (%dx),%al
  1028d5:	88 45 ff             	mov    %al,-0x1(%ebp)
  1028d8:	8a 45 ff             	mov    -0x1(%ebp),%al
  1028db:	c9                   	leave  
  1028dc:	c3                   	ret    

001028dd <outByte>:
  1028dd:	55                   	push   %ebp
  1028de:	89 e5                	mov    %esp,%ebp
  1028e0:	83 ec 08             	sub    $0x8,%esp
  1028e3:	e8 5d db ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  1028e8:	05 18 37 00 00       	add    $0x3718,%eax
  1028ed:	8b 45 08             	mov    0x8(%ebp),%eax
  1028f0:	8b 55 0c             	mov    0xc(%ebp),%edx
  1028f3:	66 89 45 fc          	mov    %ax,-0x4(%ebp)
  1028f7:	88 d0                	mov    %dl,%al
  1028f9:	88 45 f8             	mov    %al,-0x8(%ebp)
  1028fc:	8a 45 f8             	mov    -0x8(%ebp),%al
  1028ff:	8b 55 fc             	mov    -0x4(%ebp),%edx
  102902:	ee                   	out    %al,(%dx)
  102903:	90                   	nop
  102904:	c9                   	leave  
  102905:	c3                   	ret    

00102906 <initKeyTable>:
  102906:	55                   	push   %ebp
  102907:	89 e5                	mov    %esp,%ebp
  102909:	83 ec 10             	sub    $0x10,%esp
  10290c:	e8 34 db ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  102911:	05 ef 36 00 00       	add    $0x36ef,%eax
  102916:	c7 c2 60 7e 10 00    	mov    $0x107e60,%edx
  10291c:	c7 02 00 00 00 00    	movl   $0x0,(%edx)
  102922:	c7 c2 40 7a 10 00    	mov    $0x107a40,%edx
  102928:	c7 02 00 00 00 00    	movl   $0x0,(%edx)
  10292e:	c7 80 00 02 00 00 00 	movl   $0x0,0x200(%eax)
  102935:	00 00 00 
  102938:	8d 90 40 01 00 00    	lea    0x140(%eax),%edx
  10293e:	89 90 fc 01 00 00    	mov    %edx,0x1fc(%eax)
  102944:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  10294b:	eb 1f                	jmp    10296c <initKeyTable+0x66>
  10294d:	8d 88 40 01 00 00    	lea    0x140(%eax),%ecx
  102953:	8b 55 fc             	mov    -0x4(%ebp),%edx
  102956:	01 ca                	add    %ecx,%edx
  102958:	c6 02 00             	movb   $0x0,(%edx)
  10295b:	8d 88 a0 01 00 00    	lea    0x1a0(%eax),%ecx
  102961:	8b 55 fc             	mov    -0x4(%ebp),%edx
  102964:	01 ca                	add    %ecx,%edx
  102966:	c6 02 00             	movb   $0x0,(%edx)
  102969:	ff 45 fc             	incl   -0x4(%ebp)
  10296c:	83 7d fc 58          	cmpl   $0x58,-0x4(%ebp)
  102970:	7e db                	jle    10294d <initKeyTable+0x47>
  102972:	c6 80 42 01 00 00 31 	movb   $0x31,0x142(%eax)
  102979:	c6 80 a2 01 00 00 21 	movb   $0x21,0x1a2(%eax)
  102980:	c6 80 43 01 00 00 32 	movb   $0x32,0x143(%eax)
  102987:	c6 80 a3 01 00 00 40 	movb   $0x40,0x1a3(%eax)
  10298e:	c6 80 44 01 00 00 33 	movb   $0x33,0x144(%eax)
  102995:	c6 80 a4 01 00 00 23 	movb   $0x23,0x1a4(%eax)
  10299c:	c6 80 45 01 00 00 34 	movb   $0x34,0x145(%eax)
  1029a3:	c6 80 a5 01 00 00 24 	movb   $0x24,0x1a5(%eax)
  1029aa:	c6 80 46 01 00 00 35 	movb   $0x35,0x146(%eax)
  1029b1:	c6 80 a6 01 00 00 25 	movb   $0x25,0x1a6(%eax)
  1029b8:	c6 80 47 01 00 00 36 	movb   $0x36,0x147(%eax)
  1029bf:	c6 80 a7 01 00 00 5e 	movb   $0x5e,0x1a7(%eax)
  1029c6:	c6 80 48 01 00 00 37 	movb   $0x37,0x148(%eax)
  1029cd:	c6 80 a8 01 00 00 26 	movb   $0x26,0x1a8(%eax)
  1029d4:	c6 80 49 01 00 00 38 	movb   $0x38,0x149(%eax)
  1029db:	c6 80 a9 01 00 00 2a 	movb   $0x2a,0x1a9(%eax)
  1029e2:	c6 80 4a 01 00 00 39 	movb   $0x39,0x14a(%eax)
  1029e9:	c6 80 aa 01 00 00 28 	movb   $0x28,0x1aa(%eax)
  1029f0:	c6 80 4b 01 00 00 30 	movb   $0x30,0x14b(%eax)
  1029f7:	c6 80 ab 01 00 00 29 	movb   $0x29,0x1ab(%eax)
  1029fe:	c6 80 5e 01 00 00 61 	movb   $0x61,0x15e(%eax)
  102a05:	c6 80 be 01 00 00 41 	movb   $0x41,0x1be(%eax)
  102a0c:	c6 80 70 01 00 00 62 	movb   $0x62,0x170(%eax)
  102a13:	c6 80 d0 01 00 00 42 	movb   $0x42,0x1d0(%eax)
  102a1a:	c6 80 6e 01 00 00 63 	movb   $0x63,0x16e(%eax)
  102a21:	c6 80 ce 01 00 00 43 	movb   $0x43,0x1ce(%eax)
  102a28:	c6 80 60 01 00 00 64 	movb   $0x64,0x160(%eax)
  102a2f:	c6 80 c0 01 00 00 44 	movb   $0x44,0x1c0(%eax)
  102a36:	c6 80 52 01 00 00 65 	movb   $0x65,0x152(%eax)
  102a3d:	c6 80 b2 01 00 00 45 	movb   $0x45,0x1b2(%eax)
  102a44:	c6 80 61 01 00 00 66 	movb   $0x66,0x161(%eax)
  102a4b:	c6 80 c1 01 00 00 46 	movb   $0x46,0x1c1(%eax)
  102a52:	c6 80 62 01 00 00 67 	movb   $0x67,0x162(%eax)
  102a59:	c6 80 c2 01 00 00 47 	movb   $0x47,0x1c2(%eax)
  102a60:	c6 80 63 01 00 00 68 	movb   $0x68,0x163(%eax)
  102a67:	c6 80 c3 01 00 00 48 	movb   $0x48,0x1c3(%eax)
  102a6e:	c6 80 57 01 00 00 69 	movb   $0x69,0x157(%eax)
  102a75:	c6 80 b7 01 00 00 49 	movb   $0x49,0x1b7(%eax)
  102a7c:	c6 80 64 01 00 00 6a 	movb   $0x6a,0x164(%eax)
  102a83:	c6 80 c4 01 00 00 4a 	movb   $0x4a,0x1c4(%eax)
  102a8a:	c6 80 65 01 00 00 6b 	movb   $0x6b,0x165(%eax)
  102a91:	c6 80 c5 01 00 00 4b 	movb   $0x4b,0x1c5(%eax)
  102a98:	c6 80 66 01 00 00 6c 	movb   $0x6c,0x166(%eax)
  102a9f:	c6 80 c6 01 00 00 4c 	movb   $0x4c,0x1c6(%eax)
  102aa6:	c6 80 72 01 00 00 6d 	movb   $0x6d,0x172(%eax)
  102aad:	c6 80 d2 01 00 00 4d 	movb   $0x4d,0x1d2(%eax)
  102ab4:	c6 80 71 01 00 00 6e 	movb   $0x6e,0x171(%eax)
  102abb:	c6 80 d1 01 00 00 4e 	movb   $0x4e,0x1d1(%eax)
  102ac2:	c6 80 58 01 00 00 6f 	movb   $0x6f,0x158(%eax)
  102ac9:	c6 80 b8 01 00 00 4f 	movb   $0x4f,0x1b8(%eax)
  102ad0:	c6 80 59 01 00 00 70 	movb   $0x70,0x159(%eax)
  102ad7:	c6 80 b9 01 00 00 50 	movb   $0x50,0x1b9(%eax)
  102ade:	c6 80 50 01 00 00 71 	movb   $0x71,0x150(%eax)
  102ae5:	c6 80 b0 01 00 00 51 	movb   $0x51,0x1b0(%eax)
  102aec:	c6 80 53 01 00 00 72 	movb   $0x72,0x153(%eax)
  102af3:	c6 80 b3 01 00 00 52 	movb   $0x52,0x1b3(%eax)
  102afa:	c6 80 5f 01 00 00 73 	movb   $0x73,0x15f(%eax)
  102b01:	c6 80 bf 01 00 00 53 	movb   $0x53,0x1bf(%eax)
  102b08:	c6 80 54 01 00 00 74 	movb   $0x74,0x154(%eax)
  102b0f:	c6 80 b4 01 00 00 54 	movb   $0x54,0x1b4(%eax)
  102b16:	c6 80 56 01 00 00 75 	movb   $0x75,0x156(%eax)
  102b1d:	c6 80 b6 01 00 00 55 	movb   $0x55,0x1b6(%eax)
  102b24:	c6 80 6f 01 00 00 76 	movb   $0x76,0x16f(%eax)
  102b2b:	c6 80 cf 01 00 00 56 	movb   $0x56,0x1cf(%eax)
  102b32:	c6 80 51 01 00 00 77 	movb   $0x77,0x151(%eax)
  102b39:	c6 80 b1 01 00 00 57 	movb   $0x57,0x1b1(%eax)
  102b40:	c6 80 6d 01 00 00 78 	movb   $0x78,0x16d(%eax)
  102b47:	c6 80 cd 01 00 00 58 	movb   $0x58,0x1cd(%eax)
  102b4e:	c6 80 55 01 00 00 79 	movb   $0x79,0x155(%eax)
  102b55:	c6 80 b5 01 00 00 59 	movb   $0x59,0x1b5(%eax)
  102b5c:	c6 80 6c 01 00 00 7a 	movb   $0x7a,0x16c(%eax)
  102b63:	c6 80 cc 01 00 00 5a 	movb   $0x5a,0x1cc(%eax)
  102b6a:	c6 80 4c 01 00 00 2d 	movb   $0x2d,0x14c(%eax)
  102b71:	c6 80 ac 01 00 00 5f 	movb   $0x5f,0x1ac(%eax)
  102b78:	c6 80 4d 01 00 00 3d 	movb   $0x3d,0x14d(%eax)
  102b7f:	c6 80 ad 01 00 00 2b 	movb   $0x2b,0x1ad(%eax)
  102b86:	c6 80 5a 01 00 00 5b 	movb   $0x5b,0x15a(%eax)
  102b8d:	c6 80 ba 01 00 00 7b 	movb   $0x7b,0x1ba(%eax)
  102b94:	c6 80 5b 01 00 00 5d 	movb   $0x5d,0x15b(%eax)
  102b9b:	c6 80 bb 01 00 00 7d 	movb   $0x7d,0x1bb(%eax)
  102ba2:	c6 80 5c 01 00 00 0a 	movb   $0xa,0x15c(%eax)
  102ba9:	c6 80 bc 01 00 00 0a 	movb   $0xa,0x1bc(%eax)
  102bb0:	c6 80 67 01 00 00 3b 	movb   $0x3b,0x167(%eax)
  102bb7:	c6 80 c7 01 00 00 3a 	movb   $0x3a,0x1c7(%eax)
  102bbe:	c6 80 68 01 00 00 27 	movb   $0x27,0x168(%eax)
  102bc5:	c6 80 c8 01 00 00 22 	movb   $0x22,0x1c8(%eax)
  102bcc:	c6 80 69 01 00 00 60 	movb   $0x60,0x169(%eax)
  102bd3:	c6 80 c9 01 00 00 7e 	movb   $0x7e,0x1c9(%eax)
  102bda:	c6 80 6b 01 00 00 5c 	movb   $0x5c,0x16b(%eax)
  102be1:	c6 80 cb 01 00 00 7c 	movb   $0x7c,0x1cb(%eax)
  102be8:	c6 80 73 01 00 00 2c 	movb   $0x2c,0x173(%eax)
  102bef:	c6 80 d3 01 00 00 3c 	movb   $0x3c,0x1d3(%eax)
  102bf6:	c6 80 74 01 00 00 2e 	movb   $0x2e,0x174(%eax)
  102bfd:	c6 80 d4 01 00 00 3e 	movb   $0x3e,0x1d4(%eax)
  102c04:	c6 80 75 01 00 00 2f 	movb   $0x2f,0x175(%eax)
  102c0b:	c6 80 d5 01 00 00 3f 	movb   $0x3f,0x1d5(%eax)
  102c12:	c6 80 79 01 00 00 20 	movb   $0x20,0x179(%eax)
  102c19:	c6 80 d9 01 00 00 20 	movb   $0x20,0x1d9(%eax)
  102c20:	90                   	nop
  102c21:	c9                   	leave  
  102c22:	c3                   	ret    

00102c23 <getKeyCode>:
  102c23:	55                   	push   %ebp
  102c24:	89 e5                	mov    %esp,%ebp
  102c26:	83 ec 10             	sub    $0x10,%esp
  102c29:	e8 17 d8 ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  102c2e:	05 d2 33 00 00       	add    $0x33d2,%eax
  102c33:	6a 60                	push   $0x60
  102c35:	e8 7e fc ff ff       	call   1028b8 <inByte>
  102c3a:	83 c4 04             	add    $0x4,%esp
  102c3d:	0f b6 c0             	movzbl %al,%eax
  102c40:	89 45 fc             	mov    %eax,-0x4(%ebp)
  102c43:	6a 61                	push   $0x61
  102c45:	e8 6e fc ff ff       	call   1028b8 <inByte>
  102c4a:	83 c4 04             	add    $0x4,%esp
  102c4d:	0f b6 c0             	movzbl %al,%eax
  102c50:	89 45 f8             	mov    %eax,-0x8(%ebp)
  102c53:	8b 45 f8             	mov    -0x8(%ebp),%eax
  102c56:	83 c8 80             	or     $0xffffff80,%eax
  102c59:	0f be c0             	movsbl %al,%eax
  102c5c:	50                   	push   %eax
  102c5d:	6a 61                	push   $0x61
  102c5f:	e8 79 fc ff ff       	call   1028dd <outByte>
  102c64:	83 c4 08             	add    $0x8,%esp
  102c67:	8b 45 f8             	mov    -0x8(%ebp),%eax
  102c6a:	0f be c0             	movsbl %al,%eax
  102c6d:	50                   	push   %eax
  102c6e:	6a 61                	push   $0x61
  102c70:	e8 68 fc ff ff       	call   1028dd <outByte>
  102c75:	83 c4 08             	add    $0x8,%esp
  102c78:	81 7d fc d8 00 00 00 	cmpl   $0xd8,-0x4(%ebp)
  102c7f:	77 05                	ja     102c86 <getKeyCode+0x63>
  102c81:	8b 45 fc             	mov    -0x4(%ebp),%eax
  102c84:	eb 05                	jmp    102c8b <getKeyCode+0x68>
  102c86:	b8 00 00 00 00       	mov    $0x0,%eax
  102c8b:	c9                   	leave  
  102c8c:	c3                   	ret    

00102c8d <switchKeyboard>:
  102c8d:	55                   	push   %ebp
  102c8e:	89 e5                	mov    %esp,%ebp
  102c90:	e8 b0 d7 ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  102c95:	05 6b 33 00 00       	add    $0x336b,%eax
  102c9a:	8b 88 fc 01 00 00    	mov    0x1fc(%eax),%ecx
  102ca0:	8d 90 40 01 00 00    	lea    0x140(%eax),%edx
  102ca6:	39 d1                	cmp    %edx,%ecx
  102ca8:	75 0e                	jne    102cb8 <switchKeyboard+0x2b>
  102caa:	8d 90 a0 01 00 00    	lea    0x1a0(%eax),%edx
  102cb0:	89 90 fc 01 00 00    	mov    %edx,0x1fc(%eax)
  102cb6:	eb 0c                	jmp    102cc4 <switchKeyboard+0x37>
  102cb8:	8d 90 40 01 00 00    	lea    0x140(%eax),%edx
  102cbe:	89 90 fc 01 00 00    	mov    %edx,0x1fc(%eax)
  102cc4:	90                   	nop
  102cc5:	5d                   	pop    %ebp
  102cc6:	c3                   	ret    

00102cc7 <getChar>:
  102cc7:	55                   	push   %ebp
  102cc8:	89 e5                	mov    %esp,%ebp
  102cca:	53                   	push   %ebx
  102ccb:	e8 65 db ff ff       	call   100835 <__x86.get_pc_thunk.bx>
  102cd0:	81 c3 30 33 00 00    	add    $0x3330,%ebx
  102cd6:	8b 45 08             	mov    0x8(%ebp),%eax
  102cd9:	83 f8 3a             	cmp    $0x3a,%eax
  102cdc:	74 32                	je     102d10 <getChar+0x49>
  102cde:	83 f8 3a             	cmp    $0x3a,%eax
  102ce1:	77 0f                	ja     102cf2 <getChar+0x2b>
  102ce3:	83 f8 2a             	cmp    $0x2a,%eax
  102ce6:	74 21                	je     102d09 <getChar+0x42>
  102ce8:	83 f8 36             	cmp    $0x36,%eax
  102ceb:	74 1c                	je     102d09 <getChar+0x42>
  102ced:	e9 87 00 00 00       	jmp    102d79 <getChar+0xb2>
  102cf2:	3d b6 00 00 00       	cmp    $0xb6,%eax
  102cf7:	74 10                	je     102d09 <getChar+0x42>
  102cf9:	3d ba 00 00 00       	cmp    $0xba,%eax
  102cfe:	74 42                	je     102d42 <getChar+0x7b>
  102d00:	3d aa 00 00 00       	cmp    $0xaa,%eax
  102d05:	74 02                	je     102d09 <getChar+0x42>
  102d07:	eb 70                	jmp    102d79 <getChar+0xb2>
  102d09:	e8 7f ff ff ff       	call   102c8d <switchKeyboard>
  102d0e:	eb 69                	jmp    102d79 <getChar+0xb2>
  102d10:	8b 83 00 02 00 00    	mov    0x200(%ebx),%eax
  102d16:	85 c0                	test   %eax,%eax
  102d18:	75 11                	jne    102d2b <getChar+0x64>
  102d1a:	c7 83 00 02 00 00 01 	movl   $0x1,0x200(%ebx)
  102d21:	00 00 00 
  102d24:	e8 64 ff ff ff       	call   102c8d <switchKeyboard>
  102d29:	eb 4a                	jmp    102d75 <getChar+0xae>
  102d2b:	8b 83 00 02 00 00    	mov    0x200(%ebx),%eax
  102d31:	83 f8 01             	cmp    $0x1,%eax
  102d34:	75 3f                	jne    102d75 <getChar+0xae>
  102d36:	c7 83 00 02 00 00 02 	movl   $0x2,0x200(%ebx)
  102d3d:	00 00 00 
  102d40:	eb 33                	jmp    102d75 <getChar+0xae>
  102d42:	8b 83 00 02 00 00    	mov    0x200(%ebx),%eax
  102d48:	83 f8 01             	cmp    $0x1,%eax
  102d4b:	75 0c                	jne    102d59 <getChar+0x92>
  102d4d:	c7 83 00 02 00 00 01 	movl   $0x1,0x200(%ebx)
  102d54:	00 00 00 
  102d57:	eb 1f                	jmp    102d78 <getChar+0xb1>
  102d59:	8b 83 00 02 00 00    	mov    0x200(%ebx),%eax
  102d5f:	83 f8 02             	cmp    $0x2,%eax
  102d62:	75 14                	jne    102d78 <getChar+0xb1>
  102d64:	c7 83 00 02 00 00 00 	movl   $0x0,0x200(%ebx)
  102d6b:	00 00 00 
  102d6e:	e8 1a ff ff ff       	call   102c8d <switchKeyboard>
  102d73:	eb 03                	jmp    102d78 <getChar+0xb1>
  102d75:	90                   	nop
  102d76:	eb 01                	jmp    102d79 <getChar+0xb2>
  102d78:	90                   	nop
  102d79:	83 7d 08 57          	cmpl   $0x57,0x8(%ebp)
  102d7d:	76 04                	jbe    102d83 <getChar+0xbc>
  102d7f:	b0 00                	mov    $0x0,%al
  102d81:	eb 0d                	jmp    102d90 <getChar+0xc9>
  102d83:	8b 93 fc 01 00 00    	mov    0x1fc(%ebx),%edx
  102d89:	8b 45 08             	mov    0x8(%ebp),%eax
  102d8c:	01 d0                	add    %edx,%eax
  102d8e:	8a 00                	mov    (%eax),%al
  102d90:	5b                   	pop    %ebx
  102d91:	5d                   	pop    %ebp
  102d92:	c3                   	ret    

00102d93 <waitForInterrupt>:
  102d93:	55                   	push   %ebp
  102d94:	89 e5                	mov    %esp,%ebp
  102d96:	e8 aa d6 ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  102d9b:	05 65 32 00 00       	add    $0x3265,%eax
  102da0:	f4                   	hlt    
  102da1:	90                   	nop
  102da2:	5d                   	pop    %ebp
  102da3:	c3                   	ret    

00102da4 <enableInterrupt>:
  102da4:	55                   	push   %ebp
  102da5:	89 e5                	mov    %esp,%ebp
  102da7:	e8 99 d6 ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  102dac:	05 54 32 00 00       	add    $0x3254,%eax
  102db1:	fb                   	sti    
  102db2:	90                   	nop
  102db3:	5d                   	pop    %ebp
  102db4:	c3                   	ret    

00102db5 <setGdt>:
  102db5:	55                   	push   %ebp
  102db6:	89 e5                	mov    %esp,%ebp
  102db8:	e8 88 d6 ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  102dbd:	05 43 32 00 00       	add    $0x3243,%eax
  102dc2:	8b 55 0c             	mov    0xc(%ebp),%edx
  102dc5:	4a                   	dec    %edx
  102dc6:	66 89 90 04 02 00 00 	mov    %dx,0x204(%eax)
  102dcd:	8b 55 08             	mov    0x8(%ebp),%edx
  102dd0:	66 89 90 06 02 00 00 	mov    %dx,0x206(%eax)
  102dd7:	8b 55 08             	mov    0x8(%ebp),%edx
  102dda:	c1 ea 10             	shr    $0x10,%edx
  102ddd:	66 89 90 08 02 00 00 	mov    %dx,0x208(%eax)
  102de4:	8d 80 04 02 00 00    	lea    0x204(%eax),%eax
  102dea:	0f 01 10             	lgdtl  (%eax)
  102ded:	90                   	nop
  102dee:	5d                   	pop    %ebp
  102def:	c3                   	ret    

00102df0 <lLdt>:
  102df0:	55                   	push   %ebp
  102df1:	89 e5                	mov    %esp,%ebp
  102df3:	83 ec 04             	sub    $0x4,%esp
  102df6:	e8 4a d6 ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  102dfb:	05 05 32 00 00       	add    $0x3205,%eax
  102e00:	8b 45 08             	mov    0x8(%ebp),%eax
  102e03:	66 89 45 fc          	mov    %ax,-0x4(%ebp)
  102e07:	8b 45 fc             	mov    -0x4(%ebp),%eax
  102e0a:	0f 00 d0             	lldt   %ax
  102e0d:	90                   	nop
  102e0e:	c9                   	leave  
  102e0f:	c3                   	ret    

00102e10 <initSeg>:
  102e10:	55                   	push   %ebp
  102e11:	89 e5                	mov    %esp,%ebp
  102e13:	56                   	push   %esi
  102e14:	53                   	push   %ebx
  102e15:	83 ec 14             	sub    $0x14,%esp
  102e18:	e8 18 da ff ff       	call   100835 <__x86.get_pc_thunk.bx>
  102e1d:	81 c3 e3 31 00 00    	add    $0x31e3,%ebx
  102e23:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  102e2a:	c7 c0 40 7f 10 00    	mov    $0x107f40,%eax
  102e30:	66 c7 40 08 ff ff    	movw   $0xffff,0x8(%eax)
  102e36:	c7 c0 40 7f 10 00    	mov    $0x107f40,%eax
  102e3c:	66 c7 40 0a 00 00    	movw   $0x0,0xa(%eax)
  102e42:	c7 c0 40 7f 10 00    	mov    $0x107f40,%eax
  102e48:	c6 40 0c 00          	movb   $0x0,0xc(%eax)
  102e4c:	c7 c0 40 7f 10 00    	mov    $0x107f40,%eax
  102e52:	8a 50 0d             	mov    0xd(%eax),%dl
  102e55:	83 e2 f0             	and    $0xfffffff0,%edx
  102e58:	83 ca 0a             	or     $0xa,%edx
  102e5b:	88 50 0d             	mov    %dl,0xd(%eax)
  102e5e:	c7 c0 40 7f 10 00    	mov    $0x107f40,%eax
  102e64:	8a 50 0d             	mov    0xd(%eax),%dl
  102e67:	83 ca 10             	or     $0x10,%edx
  102e6a:	88 50 0d             	mov    %dl,0xd(%eax)
  102e6d:	c7 c0 40 7f 10 00    	mov    $0x107f40,%eax
  102e73:	8a 50 0d             	mov    0xd(%eax),%dl
  102e76:	83 e2 9f             	and    $0xffffff9f,%edx
  102e79:	88 50 0d             	mov    %dl,0xd(%eax)
  102e7c:	c7 c0 40 7f 10 00    	mov    $0x107f40,%eax
  102e82:	8a 50 0d             	mov    0xd(%eax),%dl
  102e85:	83 ca 80             	or     $0xffffff80,%edx
  102e88:	88 50 0d             	mov    %dl,0xd(%eax)
  102e8b:	c7 c0 40 7f 10 00    	mov    $0x107f40,%eax
  102e91:	8a 50 0e             	mov    0xe(%eax),%dl
  102e94:	83 ca 0f             	or     $0xf,%edx
  102e97:	88 50 0e             	mov    %dl,0xe(%eax)
  102e9a:	c7 c0 40 7f 10 00    	mov    $0x107f40,%eax
  102ea0:	8a 50 0e             	mov    0xe(%eax),%dl
  102ea3:	83 e2 ef             	and    $0xffffffef,%edx
  102ea6:	88 50 0e             	mov    %dl,0xe(%eax)
  102ea9:	c7 c0 40 7f 10 00    	mov    $0x107f40,%eax
  102eaf:	8a 50 0e             	mov    0xe(%eax),%dl
  102eb2:	83 e2 df             	and    $0xffffffdf,%edx
  102eb5:	88 50 0e             	mov    %dl,0xe(%eax)
  102eb8:	c7 c0 40 7f 10 00    	mov    $0x107f40,%eax
  102ebe:	8a 50 0e             	mov    0xe(%eax),%dl
  102ec1:	83 ca 40             	or     $0x40,%edx
  102ec4:	88 50 0e             	mov    %dl,0xe(%eax)
  102ec7:	c7 c0 40 7f 10 00    	mov    $0x107f40,%eax
  102ecd:	8a 50 0e             	mov    0xe(%eax),%dl
  102ed0:	83 ca 80             	or     $0xffffff80,%edx
  102ed3:	88 50 0e             	mov    %dl,0xe(%eax)
  102ed6:	c7 c0 40 7f 10 00    	mov    $0x107f40,%eax
  102edc:	c6 40 0f 00          	movb   $0x0,0xf(%eax)
  102ee0:	c7 c0 40 7f 10 00    	mov    $0x107f40,%eax
  102ee6:	66 c7 40 10 ff ff    	movw   $0xffff,0x10(%eax)
  102eec:	c7 c0 40 7f 10 00    	mov    $0x107f40,%eax
  102ef2:	66 c7 40 12 00 00    	movw   $0x0,0x12(%eax)
  102ef8:	c7 c0 40 7f 10 00    	mov    $0x107f40,%eax
  102efe:	c6 40 14 00          	movb   $0x0,0x14(%eax)
  102f02:	c7 c0 40 7f 10 00    	mov    $0x107f40,%eax
  102f08:	8a 50 15             	mov    0x15(%eax),%dl
  102f0b:	83 e2 f0             	and    $0xfffffff0,%edx
  102f0e:	83 ca 02             	or     $0x2,%edx
  102f11:	88 50 15             	mov    %dl,0x15(%eax)
  102f14:	c7 c0 40 7f 10 00    	mov    $0x107f40,%eax
  102f1a:	8a 50 15             	mov    0x15(%eax),%dl
  102f1d:	83 ca 10             	or     $0x10,%edx
  102f20:	88 50 15             	mov    %dl,0x15(%eax)
  102f23:	c7 c0 40 7f 10 00    	mov    $0x107f40,%eax
  102f29:	8a 50 15             	mov    0x15(%eax),%dl
  102f2c:	83 e2 9f             	and    $0xffffff9f,%edx
  102f2f:	88 50 15             	mov    %dl,0x15(%eax)
  102f32:	c7 c0 40 7f 10 00    	mov    $0x107f40,%eax
  102f38:	8a 50 15             	mov    0x15(%eax),%dl
  102f3b:	83 ca 80             	or     $0xffffff80,%edx
  102f3e:	88 50 15             	mov    %dl,0x15(%eax)
  102f41:	c7 c0 40 7f 10 00    	mov    $0x107f40,%eax
  102f47:	8a 50 16             	mov    0x16(%eax),%dl
  102f4a:	83 ca 0f             	or     $0xf,%edx
  102f4d:	88 50 16             	mov    %dl,0x16(%eax)
  102f50:	c7 c0 40 7f 10 00    	mov    $0x107f40,%eax
  102f56:	8a 50 16             	mov    0x16(%eax),%dl
  102f59:	83 e2 ef             	and    $0xffffffef,%edx
  102f5c:	88 50 16             	mov    %dl,0x16(%eax)
  102f5f:	c7 c0 40 7f 10 00    	mov    $0x107f40,%eax
  102f65:	8a 50 16             	mov    0x16(%eax),%dl
  102f68:	83 e2 df             	and    $0xffffffdf,%edx
  102f6b:	88 50 16             	mov    %dl,0x16(%eax)
  102f6e:	c7 c0 40 7f 10 00    	mov    $0x107f40,%eax
  102f74:	8a 50 16             	mov    0x16(%eax),%dl
  102f77:	83 ca 40             	or     $0x40,%edx
  102f7a:	88 50 16             	mov    %dl,0x16(%eax)
  102f7d:	c7 c0 40 7f 10 00    	mov    $0x107f40,%eax
  102f83:	8a 50 16             	mov    0x16(%eax),%dl
  102f86:	83 ca 80             	or     $0xffffff80,%edx
  102f89:	88 50 16             	mov    %dl,0x16(%eax)
  102f8c:	c7 c0 40 7f 10 00    	mov    $0x107f40,%eax
  102f92:	c6 40 17 00          	movb   $0x0,0x17(%eax)
  102f96:	c7 45 f4 01 00 00 00 	movl   $0x1,-0xc(%ebp)
  102f9d:	e9 e1 01 00 00       	jmp    103183 <initSeg+0x373>
  102fa2:	8b 45 f4             	mov    -0xc(%ebp),%eax
  102fa5:	01 c0                	add    %eax,%eax
  102fa7:	40                   	inc    %eax
  102fa8:	8b 55 f4             	mov    -0xc(%ebp),%edx
  102fab:	42                   	inc    %edx
  102fac:	c1 e2 14             	shl    $0x14,%edx
  102faf:	c1 ea 10             	shr    $0x10,%edx
  102fb2:	88 d1                	mov    %dl,%cl
  102fb4:	8b 55 f4             	mov    -0xc(%ebp),%edx
  102fb7:	42                   	inc    %edx
  102fb8:	c1 e2 14             	shl    $0x14,%edx
  102fbb:	c1 ea 18             	shr    $0x18,%edx
  102fbe:	88 55 e7             	mov    %dl,-0x19(%ebp)
  102fc1:	c7 c2 40 7f 10 00    	mov    $0x107f40,%edx
  102fc7:	66 c7 04 c2 00 01    	movw   $0x100,(%edx,%eax,8)
  102fcd:	c7 c2 40 7f 10 00    	mov    $0x107f40,%edx
  102fd3:	66 c7 44 c2 02 00 00 	movw   $0x0,0x2(%edx,%eax,8)
  102fda:	c7 c2 40 7f 10 00    	mov    $0x107f40,%edx
  102fe0:	88 4c c2 04          	mov    %cl,0x4(%edx,%eax,8)
  102fe4:	c7 c2 40 7f 10 00    	mov    $0x107f40,%edx
  102fea:	8a 4c c2 05          	mov    0x5(%edx,%eax,8),%cl
  102fee:	83 e1 f0             	and    $0xfffffff0,%ecx
  102ff1:	89 ce                	mov    %ecx,%esi
  102ff3:	83 ce 0a             	or     $0xa,%esi
  102ff6:	89 f1                	mov    %esi,%ecx
  102ff8:	88 4c c2 05          	mov    %cl,0x5(%edx,%eax,8)
  102ffc:	c7 c2 40 7f 10 00    	mov    $0x107f40,%edx
  103002:	8a 4c c2 05          	mov    0x5(%edx,%eax,8),%cl
  103006:	83 c9 10             	or     $0x10,%ecx
  103009:	88 4c c2 05          	mov    %cl,0x5(%edx,%eax,8)
  10300d:	c7 c2 40 7f 10 00    	mov    $0x107f40,%edx
  103013:	8a 4c c2 05          	mov    0x5(%edx,%eax,8),%cl
  103017:	83 c9 60             	or     $0x60,%ecx
  10301a:	88 4c c2 05          	mov    %cl,0x5(%edx,%eax,8)
  10301e:	c7 c2 40 7f 10 00    	mov    $0x107f40,%edx
  103024:	8a 4c c2 05          	mov    0x5(%edx,%eax,8),%cl
  103028:	83 c9 80             	or     $0xffffff80,%ecx
  10302b:	88 4c c2 05          	mov    %cl,0x5(%edx,%eax,8)
  10302f:	c7 c2 40 7f 10 00    	mov    $0x107f40,%edx
  103035:	8a 4c c2 06          	mov    0x6(%edx,%eax,8),%cl
  103039:	83 e1 f0             	and    $0xfffffff0,%ecx
  10303c:	88 4c c2 06          	mov    %cl,0x6(%edx,%eax,8)
  103040:	c7 c2 40 7f 10 00    	mov    $0x107f40,%edx
  103046:	8a 4c c2 06          	mov    0x6(%edx,%eax,8),%cl
  10304a:	83 e1 ef             	and    $0xffffffef,%ecx
  10304d:	88 4c c2 06          	mov    %cl,0x6(%edx,%eax,8)
  103051:	c7 c2 40 7f 10 00    	mov    $0x107f40,%edx
  103057:	8a 4c c2 06          	mov    0x6(%edx,%eax,8),%cl
  10305b:	83 e1 df             	and    $0xffffffdf,%ecx
  10305e:	88 4c c2 06          	mov    %cl,0x6(%edx,%eax,8)
  103062:	c7 c2 40 7f 10 00    	mov    $0x107f40,%edx
  103068:	8a 4c c2 06          	mov    0x6(%edx,%eax,8),%cl
  10306c:	83 c9 40             	or     $0x40,%ecx
  10306f:	88 4c c2 06          	mov    %cl,0x6(%edx,%eax,8)
  103073:	c7 c2 40 7f 10 00    	mov    $0x107f40,%edx
  103079:	8a 4c c2 06          	mov    0x6(%edx,%eax,8),%cl
  10307d:	83 c9 80             	or     $0xffffff80,%ecx
  103080:	88 4c c2 06          	mov    %cl,0x6(%edx,%eax,8)
  103084:	c7 c2 40 7f 10 00    	mov    $0x107f40,%edx
  10308a:	8a 4d e7             	mov    -0x19(%ebp),%cl
  10308d:	88 4c c2 07          	mov    %cl,0x7(%edx,%eax,8)
  103091:	8b 45 f4             	mov    -0xc(%ebp),%eax
  103094:	40                   	inc    %eax
  103095:	01 c0                	add    %eax,%eax
  103097:	8b 55 f4             	mov    -0xc(%ebp),%edx
  10309a:	42                   	inc    %edx
  10309b:	c1 e2 14             	shl    $0x14,%edx
  10309e:	c1 ea 10             	shr    $0x10,%edx
  1030a1:	88 d1                	mov    %dl,%cl
  1030a3:	8b 55 f4             	mov    -0xc(%ebp),%edx
  1030a6:	42                   	inc    %edx
  1030a7:	c1 e2 14             	shl    $0x14,%edx
  1030aa:	c1 ea 18             	shr    $0x18,%edx
  1030ad:	88 55 e7             	mov    %dl,-0x19(%ebp)
  1030b0:	c7 c2 40 7f 10 00    	mov    $0x107f40,%edx
  1030b6:	66 c7 04 c2 00 01    	movw   $0x100,(%edx,%eax,8)
  1030bc:	c7 c2 40 7f 10 00    	mov    $0x107f40,%edx
  1030c2:	66 c7 44 c2 02 00 00 	movw   $0x0,0x2(%edx,%eax,8)
  1030c9:	c7 c2 40 7f 10 00    	mov    $0x107f40,%edx
  1030cf:	88 4c c2 04          	mov    %cl,0x4(%edx,%eax,8)
  1030d3:	c7 c2 40 7f 10 00    	mov    $0x107f40,%edx
  1030d9:	8a 4c c2 05          	mov    0x5(%edx,%eax,8),%cl
  1030dd:	83 e1 f0             	and    $0xfffffff0,%ecx
  1030e0:	89 ce                	mov    %ecx,%esi
  1030e2:	83 ce 02             	or     $0x2,%esi
  1030e5:	89 f1                	mov    %esi,%ecx
  1030e7:	88 4c c2 05          	mov    %cl,0x5(%edx,%eax,8)
  1030eb:	c7 c2 40 7f 10 00    	mov    $0x107f40,%edx
  1030f1:	8a 4c c2 05          	mov    0x5(%edx,%eax,8),%cl
  1030f5:	83 c9 10             	or     $0x10,%ecx
  1030f8:	88 4c c2 05          	mov    %cl,0x5(%edx,%eax,8)
  1030fc:	c7 c2 40 7f 10 00    	mov    $0x107f40,%edx
  103102:	8a 4c c2 05          	mov    0x5(%edx,%eax,8),%cl
  103106:	83 c9 60             	or     $0x60,%ecx
  103109:	88 4c c2 05          	mov    %cl,0x5(%edx,%eax,8)
  10310d:	c7 c2 40 7f 10 00    	mov    $0x107f40,%edx
  103113:	8a 4c c2 05          	mov    0x5(%edx,%eax,8),%cl
  103117:	83 c9 80             	or     $0xffffff80,%ecx
  10311a:	88 4c c2 05          	mov    %cl,0x5(%edx,%eax,8)
  10311e:	c7 c2 40 7f 10 00    	mov    $0x107f40,%edx
  103124:	8a 4c c2 06          	mov    0x6(%edx,%eax,8),%cl
  103128:	83 e1 f0             	and    $0xfffffff0,%ecx
  10312b:	88 4c c2 06          	mov    %cl,0x6(%edx,%eax,8)
  10312f:	c7 c2 40 7f 10 00    	mov    $0x107f40,%edx
  103135:	8a 4c c2 06          	mov    0x6(%edx,%eax,8),%cl
  103139:	83 e1 ef             	and    $0xffffffef,%ecx
  10313c:	88 4c c2 06          	mov    %cl,0x6(%edx,%eax,8)
  103140:	c7 c2 40 7f 10 00    	mov    $0x107f40,%edx
  103146:	8a 4c c2 06          	mov    0x6(%edx,%eax,8),%cl
  10314a:	83 e1 df             	and    $0xffffffdf,%ecx
  10314d:	88 4c c2 06          	mov    %cl,0x6(%edx,%eax,8)
  103151:	c7 c2 40 7f 10 00    	mov    $0x107f40,%edx
  103157:	8a 4c c2 06          	mov    0x6(%edx,%eax,8),%cl
  10315b:	83 c9 40             	or     $0x40,%ecx
  10315e:	88 4c c2 06          	mov    %cl,0x6(%edx,%eax,8)
  103162:	c7 c2 40 7f 10 00    	mov    $0x107f40,%edx
  103168:	8a 4c c2 06          	mov    0x6(%edx,%eax,8),%cl
  10316c:	83 c9 80             	or     $0xffffff80,%ecx
  10316f:	88 4c c2 06          	mov    %cl,0x6(%edx,%eax,8)
  103173:	c7 c2 40 7f 10 00    	mov    $0x107f40,%edx
  103179:	8a 4d e7             	mov    -0x19(%ebp),%cl
  10317c:	88 4c c2 07          	mov    %cl,0x7(%edx,%eax,8)
  103180:	ff 45 f4             	incl   -0xc(%ebp)
  103183:	83 7d f4 08          	cmpl   $0x8,-0xc(%ebp)
  103187:	0f 8e 15 fe ff ff    	jle    102fa2 <initSeg+0x192>
  10318d:	c7 c0 40 7f 10 00    	mov    $0x107f40,%eax
  103193:	66 c7 80 98 00 00 00 	movw   $0x63,0x98(%eax)
  10319a:	63 00 
  10319c:	c7 c0 e0 7f 10 00    	mov    $0x107fe0,%eax
  1031a2:	c7 c2 40 7f 10 00    	mov    $0x107f40,%edx
  1031a8:	66 89 82 9a 00 00 00 	mov    %ax,0x9a(%edx)
  1031af:	c7 c0 e0 7f 10 00    	mov    $0x107fe0,%eax
  1031b5:	c1 e8 10             	shr    $0x10,%eax
  1031b8:	88 c2                	mov    %al,%dl
  1031ba:	c7 c0 40 7f 10 00    	mov    $0x107f40,%eax
  1031c0:	88 90 9c 00 00 00    	mov    %dl,0x9c(%eax)
  1031c6:	c7 c0 40 7f 10 00    	mov    $0x107f40,%eax
  1031cc:	8a 90 9d 00 00 00    	mov    0x9d(%eax),%dl
  1031d2:	83 e2 f0             	and    $0xfffffff0,%edx
  1031d5:	83 ca 09             	or     $0x9,%edx
  1031d8:	88 90 9d 00 00 00    	mov    %dl,0x9d(%eax)
  1031de:	c7 c0 40 7f 10 00    	mov    $0x107f40,%eax
  1031e4:	8a 90 9d 00 00 00    	mov    0x9d(%eax),%dl
  1031ea:	83 e2 ef             	and    $0xffffffef,%edx
  1031ed:	88 90 9d 00 00 00    	mov    %dl,0x9d(%eax)
  1031f3:	c7 c0 40 7f 10 00    	mov    $0x107f40,%eax
  1031f9:	8a 90 9d 00 00 00    	mov    0x9d(%eax),%dl
  1031ff:	83 e2 9f             	and    $0xffffff9f,%edx
  103202:	88 90 9d 00 00 00    	mov    %dl,0x9d(%eax)
  103208:	c7 c0 40 7f 10 00    	mov    $0x107f40,%eax
  10320e:	8a 90 9d 00 00 00    	mov    0x9d(%eax),%dl
  103214:	83 ca 80             	or     $0xffffff80,%edx
  103217:	88 90 9d 00 00 00    	mov    %dl,0x9d(%eax)
  10321d:	c7 c0 40 7f 10 00    	mov    $0x107f40,%eax
  103223:	8a 90 9e 00 00 00    	mov    0x9e(%eax),%dl
  103229:	83 e2 f0             	and    $0xfffffff0,%edx
  10322c:	88 90 9e 00 00 00    	mov    %dl,0x9e(%eax)
  103232:	c7 c0 40 7f 10 00    	mov    $0x107f40,%eax
  103238:	8a 90 9e 00 00 00    	mov    0x9e(%eax),%dl
  10323e:	83 e2 ef             	and    $0xffffffef,%edx
  103241:	88 90 9e 00 00 00    	mov    %dl,0x9e(%eax)
  103247:	c7 c0 40 7f 10 00    	mov    $0x107f40,%eax
  10324d:	8a 90 9e 00 00 00    	mov    0x9e(%eax),%dl
  103253:	83 e2 df             	and    $0xffffffdf,%edx
  103256:	88 90 9e 00 00 00    	mov    %dl,0x9e(%eax)
  10325c:	c7 c0 40 7f 10 00    	mov    $0x107f40,%eax
  103262:	8a 90 9e 00 00 00    	mov    0x9e(%eax),%dl
  103268:	83 ca 40             	or     $0x40,%edx
  10326b:	88 90 9e 00 00 00    	mov    %dl,0x9e(%eax)
  103271:	c7 c0 40 7f 10 00    	mov    $0x107f40,%eax
  103277:	8a 90 9e 00 00 00    	mov    0x9e(%eax),%dl
  10327d:	83 e2 7f             	and    $0x7f,%edx
  103280:	88 90 9e 00 00 00    	mov    %dl,0x9e(%eax)
  103286:	c7 c0 e0 7f 10 00    	mov    $0x107fe0,%eax
  10328c:	c1 e8 18             	shr    $0x18,%eax
  10328f:	88 c2                	mov    %al,%dl
  103291:	c7 c0 40 7f 10 00    	mov    $0x107f40,%eax
  103297:	88 90 9f 00 00 00    	mov    %dl,0x9f(%eax)
  10329d:	c7 c0 40 7f 10 00    	mov    $0x107f40,%eax
  1032a3:	8a 90 9d 00 00 00    	mov    0x9d(%eax),%dl
  1032a9:	83 e2 ef             	and    $0xffffffef,%edx
  1032ac:	88 90 9d 00 00 00    	mov    %dl,0x9d(%eax)
  1032b2:	68 a0 00 00 00       	push   $0xa0
  1032b7:	c7 c0 40 7f 10 00    	mov    $0x107f40,%eax
  1032bd:	50                   	push   %eax
  1032be:	e8 f2 fa ff ff       	call   102db5 <setGdt>
  1032c3:	83 c4 08             	add    $0x8,%esp
  1032c6:	c7 c0 e0 7f 10 00    	mov    $0x107fe0,%eax
  1032cc:	c7 40 08 10 00 00 00 	movl   $0x10,0x8(%eax)
  1032d3:	b8 98 00 00 00       	mov    $0x98,%eax
  1032d8:	0f 00 d8             	ltr    %ax
  1032db:	b8 10 00 00 00       	mov    $0x10,%eax
  1032e0:	8e d8                	mov    %eax,%ds
  1032e2:	b8 10 00 00 00       	mov    $0x10,%eax
  1032e7:	8e d0                	mov    %eax,%ss
  1032e9:	6a 00                	push   $0x0
  1032eb:	e8 00 fb ff ff       	call   102df0 <lLdt>
  1032f0:	83 c4 04             	add    $0x4,%esp
  1032f3:	90                   	nop
  1032f4:	8d 65 f8             	lea    -0x8(%ebp),%esp
  1032f7:	5b                   	pop    %ebx
  1032f8:	5e                   	pop    %esi
  1032f9:	5d                   	pop    %ebp
  1032fa:	c3                   	ret    

001032fb <initFS>:
  1032fb:	55                   	push   %ebp
  1032fc:	89 e5                	mov    %esp,%ebp
  1032fe:	53                   	push   %ebx
  1032ff:	83 ec 04             	sub    $0x4,%esp
  103302:	e8 3e d1 ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  103307:	05 f9 2c 00 00       	add    $0x2cf9,%eax
  10330c:	83 ec 0c             	sub    $0xc,%esp
  10330f:	c7 c2 60 80 10 00    	mov    $0x108060,%edx
  103315:	52                   	push   %edx
  103316:	89 c3                	mov    %eax,%ebx
  103318:	e8 2c d1 ff ff       	call   100449 <readSuperBlock>
  10331d:	83 c4 10             	add    $0x10,%esp
  103320:	90                   	nop
  103321:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  103324:	c9                   	leave  
  103325:	c3                   	ret    

00103326 <initSem>:
  103326:	55                   	push   %ebp
  103327:	89 e5                	mov    %esp,%ebp
  103329:	53                   	push   %ebx
  10332a:	83 ec 10             	sub    $0x10,%esp
  10332d:	e8 13 d1 ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  103332:	05 ce 2c 00 00       	add    $0x2cce,%eax
  103337:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
  10333e:	eb 7a                	jmp    1033ba <initSem+0x94>
  103340:	c7 c2 c0 7e 10 00    	mov    $0x107ec0,%edx
  103346:	8b 4d f8             	mov    -0x8(%ebp),%ecx
  103349:	c1 e1 04             	shl    $0x4,%ecx
  10334c:	01 ca                	add    %ecx,%edx
  10334e:	c7 02 00 00 00 00    	movl   $0x0,(%edx)
  103354:	c7 c2 c0 7e 10 00    	mov    $0x107ec0,%edx
  10335a:	8b 4d f8             	mov    -0x8(%ebp),%ecx
  10335d:	c1 e1 04             	shl    $0x4,%ecx
  103360:	01 ca                	add    %ecx,%edx
  103362:	83 c2 04             	add    $0x4,%edx
  103365:	c7 02 00 00 00 00    	movl   $0x0,(%edx)
  10336b:	8b 55 f8             	mov    -0x8(%ebp),%edx
  10336e:	89 d1                	mov    %edx,%ecx
  103370:	c1 e1 04             	shl    $0x4,%ecx
  103373:	c7 c2 c0 7e 10 00    	mov    $0x107ec0,%edx
  103379:	01 ca                	add    %ecx,%edx
  10337b:	8d 4a 08             	lea    0x8(%edx),%ecx
  10337e:	c7 c2 c0 7e 10 00    	mov    $0x107ec0,%edx
  103384:	8b 5d f8             	mov    -0x8(%ebp),%ebx
  103387:	c1 e3 04             	shl    $0x4,%ebx
  10338a:	01 da                	add    %ebx,%edx
  10338c:	83 c2 08             	add    $0x8,%edx
  10338f:	89 0a                	mov    %ecx,(%edx)
  103391:	8b 55 f8             	mov    -0x8(%ebp),%edx
  103394:	89 d1                	mov    %edx,%ecx
  103396:	c1 e1 04             	shl    $0x4,%ecx
  103399:	c7 c2 c0 7e 10 00    	mov    $0x107ec0,%edx
  10339f:	01 ca                	add    %ecx,%edx
  1033a1:	8d 4a 08             	lea    0x8(%edx),%ecx
  1033a4:	c7 c2 c0 7e 10 00    	mov    $0x107ec0,%edx
  1033aa:	8b 5d f8             	mov    -0x8(%ebp),%ebx
  1033ad:	c1 e3 04             	shl    $0x4,%ebx
  1033b0:	01 da                	add    %ebx,%edx
  1033b2:	83 c2 0c             	add    $0xc,%edx
  1033b5:	89 0a                	mov    %ecx,(%edx)
  1033b7:	ff 45 f8             	incl   -0x8(%ebp)
  1033ba:	83 7d f8 07          	cmpl   $0x7,-0x8(%ebp)
  1033be:	7e 80                	jle    103340 <initSem+0x1a>
  1033c0:	90                   	nop
  1033c1:	83 c4 10             	add    $0x10,%esp
  1033c4:	5b                   	pop    %ebx
  1033c5:	5d                   	pop    %ebp
  1033c6:	c3                   	ret    

001033c7 <initDev>:
  1033c7:	55                   	push   %ebp
  1033c8:	89 e5                	mov    %esp,%ebp
  1033ca:	53                   	push   %ebx
  1033cb:	83 ec 10             	sub    $0x10,%esp
  1033ce:	e8 72 d0 ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  1033d3:	05 2d 2c 00 00       	add    $0x2c2d,%eax
  1033d8:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
  1033df:	eb 7a                	jmp    10345b <initDev+0x94>
  1033e1:	c7 c2 80 7e 10 00    	mov    $0x107e80,%edx
  1033e7:	8b 4d f8             	mov    -0x8(%ebp),%ecx
  1033ea:	c1 e1 04             	shl    $0x4,%ecx
  1033ed:	01 ca                	add    %ecx,%edx
  1033ef:	c7 02 01 00 00 00    	movl   $0x1,(%edx)
  1033f5:	c7 c2 80 7e 10 00    	mov    $0x107e80,%edx
  1033fb:	8b 4d f8             	mov    -0x8(%ebp),%ecx
  1033fe:	c1 e1 04             	shl    $0x4,%ecx
  103401:	01 ca                	add    %ecx,%edx
  103403:	83 c2 04             	add    $0x4,%edx
  103406:	c7 02 00 00 00 00    	movl   $0x0,(%edx)
  10340c:	8b 55 f8             	mov    -0x8(%ebp),%edx
  10340f:	89 d1                	mov    %edx,%ecx
  103411:	c1 e1 04             	shl    $0x4,%ecx
  103414:	c7 c2 80 7e 10 00    	mov    $0x107e80,%edx
  10341a:	01 ca                	add    %ecx,%edx
  10341c:	8d 4a 08             	lea    0x8(%edx),%ecx
  10341f:	c7 c2 80 7e 10 00    	mov    $0x107e80,%edx
  103425:	8b 5d f8             	mov    -0x8(%ebp),%ebx
  103428:	c1 e3 04             	shl    $0x4,%ebx
  10342b:	01 da                	add    %ebx,%edx
  10342d:	83 c2 08             	add    $0x8,%edx
  103430:	89 0a                	mov    %ecx,(%edx)
  103432:	8b 55 f8             	mov    -0x8(%ebp),%edx
  103435:	89 d1                	mov    %edx,%ecx
  103437:	c1 e1 04             	shl    $0x4,%ecx
  10343a:	c7 c2 80 7e 10 00    	mov    $0x107e80,%edx
  103440:	01 ca                	add    %ecx,%edx
  103442:	8d 4a 08             	lea    0x8(%edx),%ecx
  103445:	c7 c2 80 7e 10 00    	mov    $0x107e80,%edx
  10344b:	8b 5d f8             	mov    -0x8(%ebp),%ebx
  10344e:	c1 e3 04             	shl    $0x4,%ebx
  103451:	01 da                	add    %ebx,%edx
  103453:	83 c2 0c             	add    $0xc,%edx
  103456:	89 0a                	mov    %ecx,(%edx)
  103458:	ff 45 f8             	incl   -0x8(%ebp)
  10345b:	83 7d f8 03          	cmpl   $0x3,-0x8(%ebp)
  10345f:	7e 80                	jle    1033e1 <initDev+0x1a>
  103461:	90                   	nop
  103462:	83 c4 10             	add    $0x10,%esp
  103465:	5b                   	pop    %ebx
  103466:	5d                   	pop    %ebp
  103467:	c3                   	ret    

00103468 <loadElf>:
  103468:	55                   	push   %ebp
  103469:	89 e5                	mov    %esp,%ebp
  10346b:	56                   	push   %esi
  10346c:	53                   	push   %ebx
  10346d:	81 ec a0 00 00 00    	sub    $0xa0,%esp
  103473:	e8 bd d3 ff ff       	call   100835 <__x86.get_pc_thunk.bx>
  103478:	81 c3 88 2b 00 00    	add    $0x2b88,%ebx
  10347e:	89 e0                	mov    %esp,%eax
  103480:	89 c6                	mov    %eax,%esi
  103482:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
  103489:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
  103490:	c7 c0 60 80 10 00    	mov    $0x108060,%eax
  103496:	8b 40 14             	mov    0x14(%eax),%eax
  103499:	8d 50 ff             	lea    -0x1(%eax),%edx
  10349c:	89 55 e8             	mov    %edx,-0x18(%ebp)
  10349f:	89 c2                	mov    %eax,%edx
  1034a1:	b8 10 00 00 00       	mov    $0x10,%eax
  1034a6:	48                   	dec    %eax
  1034a7:	01 d0                	add    %edx,%eax
  1034a9:	b9 10 00 00 00       	mov    $0x10,%ecx
  1034ae:	ba 00 00 00 00       	mov    $0x0,%edx
  1034b3:	f7 f1                	div    %ecx
  1034b5:	6b c0 10             	imul   $0x10,%eax,%eax
  1034b8:	29 c4                	sub    %eax,%esp
  1034ba:	89 e0                	mov    %esp,%eax
  1034bc:	83 c0 00             	add    $0x0,%eax
  1034bf:	89 45 e4             	mov    %eax,-0x1c(%ebp)
  1034c2:	c7 45 e0 00 00 00 00 	movl   $0x0,-0x20(%ebp)
  1034c9:	c7 85 58 ff ff ff 00 	movl   $0x0,-0xa8(%ebp)
  1034d0:	00 00 00 
  1034d3:	c7 45 dc 00 00 00 00 	movl   $0x0,-0x24(%ebp)
  1034da:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  1034e1:	83 ec 0c             	sub    $0xc,%esp
  1034e4:	8d 83 f4 e2 ff ff    	lea    -0x1d0c(%ebx),%eax
  1034ea:	50                   	push   %eax
  1034eb:	e8 f5 05 00 00       	call   103ae5 <putString>
  1034f0:	83 c4 10             	add    $0x10,%esp
  1034f3:	83 ec 0c             	sub    $0xc,%esp
  1034f6:	ff 75 08             	pushl  0x8(%ebp)
  1034f9:	e8 e7 05 00 00       	call   103ae5 <putString>
  1034fe:	83 c4 10             	add    $0x10,%esp
  103501:	83 ec 0c             	sub    $0xc,%esp
  103504:	6a 0a                	push   $0xa
  103506:	e8 a4 05 00 00       	call   103aaf <putChar>
  10350b:	83 c4 10             	add    $0x10,%esp
  10350e:	ff 75 08             	pushl  0x8(%ebp)
  103511:	8d 85 58 ff ff ff    	lea    -0xa8(%ebp),%eax
  103517:	50                   	push   %eax
  103518:	8d 85 5c ff ff ff    	lea    -0xa4(%ebp),%eax
  10351e:	50                   	push   %eax
  10351f:	c7 c0 60 80 10 00    	mov    $0x108060,%eax
  103525:	50                   	push   %eax
  103526:	e8 5a d0 ff ff       	call   100585 <readInode>
  10352b:	83 c4 10             	add    $0x10,%esp
  10352e:	89 45 e0             	mov    %eax,-0x20(%ebp)
  103531:	83 7d e0 ff          	cmpl   $0xffffffff,-0x20(%ebp)
  103535:	75 0a                	jne    103541 <loadElf+0xd9>
  103537:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  10353c:	e9 5c 01 00 00       	jmp    10369d <loadElf+0x235>
  103541:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  103544:	50                   	push   %eax
  103545:	6a 00                	push   $0x0
  103547:	8d 85 5c ff ff ff    	lea    -0xa4(%ebp),%eax
  10354d:	50                   	push   %eax
  10354e:	c7 c0 60 80 10 00    	mov    $0x108060,%eax
  103554:	50                   	push   %eax
  103555:	e8 20 cf ff ff       	call   10047a <readBlock>
  10355a:	83 c4 10             	add    $0x10,%esp
  10355d:	89 45 e0             	mov    %eax,-0x20(%ebp)
  103560:	83 7d e0 ff          	cmpl   $0xffffffff,-0x20(%ebp)
  103564:	75 0a                	jne    103570 <loadElf+0x108>
  103566:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  10356b:	e9 2d 01 00 00       	jmp    10369d <loadElf+0x235>
  103570:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  103573:	89 45 dc             	mov    %eax,-0x24(%ebp)
  103576:	8b 45 dc             	mov    -0x24(%ebp),%eax
  103579:	8b 00                	mov    (%eax),%eax
  10357b:	3d 7f 45 4c 46       	cmp    $0x464c457f,%eax
  103580:	74 0a                	je     10358c <loadElf+0x124>
  103582:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  103587:	e9 11 01 00 00       	jmp    10369d <loadElf+0x235>
  10358c:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
  103593:	eb 31                	jmp    1035c6 <loadElf+0x15e>
  103595:	c7 c0 60 80 10 00    	mov    $0x108060,%eax
  10359b:	8b 40 14             	mov    0x14(%eax),%eax
  10359e:	0f af 45 ec          	imul   -0x14(%ebp),%eax
  1035a2:	89 c2                	mov    %eax,%edx
  1035a4:	8b 45 0c             	mov    0xc(%ebp),%eax
  1035a7:	01 d0                	add    %edx,%eax
  1035a9:	50                   	push   %eax
  1035aa:	ff 75 ec             	pushl  -0x14(%ebp)
  1035ad:	8d 85 5c ff ff ff    	lea    -0xa4(%ebp),%eax
  1035b3:	50                   	push   %eax
  1035b4:	c7 c0 60 80 10 00    	mov    $0x108060,%eax
  1035ba:	50                   	push   %eax
  1035bb:	e8 ba ce ff ff       	call   10047a <readBlock>
  1035c0:	83 c4 10             	add    $0x10,%esp
  1035c3:	ff 45 ec             	incl   -0x14(%ebp)
  1035c6:	8b 85 60 ff ff ff    	mov    -0xa0(%ebp),%eax
  1035cc:	39 45 ec             	cmp    %eax,-0x14(%ebp)
  1035cf:	7c c4                	jl     103595 <loadElf+0x12d>
  1035d1:	8b 55 e4             	mov    -0x1c(%ebp),%edx
  1035d4:	8b 45 dc             	mov    -0x24(%ebp),%eax
  1035d7:	8b 40 1c             	mov    0x1c(%eax),%eax
  1035da:	01 d0                	add    %edx,%eax
  1035dc:	89 45 f4             	mov    %eax,-0xc(%ebp)
  1035df:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
  1035e6:	e9 90 00 00 00       	jmp    10367b <loadElf+0x213>
  1035eb:	8b 45 f4             	mov    -0xc(%ebp),%eax
  1035ee:	8b 00                	mov    (%eax),%eax
  1035f0:	83 f8 01             	cmp    $0x1,%eax
  1035f3:	75 7f                	jne    103674 <loadElf+0x20c>
  1035f5:	8b 45 f4             	mov    -0xc(%ebp),%eax
  1035f8:	8b 50 08             	mov    0x8(%eax),%edx
  1035fb:	8b 45 f4             	mov    -0xc(%ebp),%eax
  1035fe:	8b 40 04             	mov    0x4(%eax),%eax
  103601:	39 c2                	cmp    %eax,%edx
  103603:	74 6f                	je     103674 <loadElf+0x20c>
  103605:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
  10360c:	eb 2b                	jmp    103639 <loadElf+0x1d1>
  10360e:	8b 45 f4             	mov    -0xc(%ebp),%eax
  103611:	8b 50 04             	mov    0x4(%eax),%edx
  103614:	8b 45 0c             	mov    0xc(%ebp),%eax
  103617:	01 c2                	add    %eax,%edx
  103619:	8b 45 f0             	mov    -0x10(%ebp),%eax
  10361c:	01 d0                	add    %edx,%eax
  10361e:	89 c1                	mov    %eax,%ecx
  103620:	8b 45 f4             	mov    -0xc(%ebp),%eax
  103623:	8b 50 08             	mov    0x8(%eax),%edx
  103626:	8b 45 0c             	mov    0xc(%ebp),%eax
  103629:	01 c2                	add    %eax,%edx
  10362b:	8b 45 f0             	mov    -0x10(%ebp),%eax
  10362e:	01 d0                	add    %edx,%eax
  103630:	89 c2                	mov    %eax,%edx
  103632:	8a 01                	mov    (%ecx),%al
  103634:	88 02                	mov    %al,(%edx)
  103636:	ff 45 f0             	incl   -0x10(%ebp)
  103639:	8b 45 f4             	mov    -0xc(%ebp),%eax
  10363c:	8b 50 10             	mov    0x10(%eax),%edx
  10363f:	8b 45 f0             	mov    -0x10(%ebp),%eax
  103642:	39 c2                	cmp    %eax,%edx
  103644:	77 c8                	ja     10360e <loadElf+0x1a6>
  103646:	8b 45 f4             	mov    -0xc(%ebp),%eax
  103649:	8b 40 10             	mov    0x10(%eax),%eax
  10364c:	89 45 f0             	mov    %eax,-0x10(%ebp)
  10364f:	eb 16                	jmp    103667 <loadElf+0x1ff>
  103651:	8b 45 f4             	mov    -0xc(%ebp),%eax
  103654:	8b 50 08             	mov    0x8(%eax),%edx
  103657:	8b 45 0c             	mov    0xc(%ebp),%eax
  10365a:	01 c2                	add    %eax,%edx
  10365c:	8b 45 f0             	mov    -0x10(%ebp),%eax
  10365f:	01 d0                	add    %edx,%eax
  103661:	c6 00 00             	movb   $0x0,(%eax)
  103664:	ff 45 f0             	incl   -0x10(%ebp)
  103667:	8b 45 f4             	mov    -0xc(%ebp),%eax
  10366a:	8b 50 14             	mov    0x14(%eax),%edx
  10366d:	8b 45 f0             	mov    -0x10(%ebp),%eax
  103670:	39 c2                	cmp    %eax,%edx
  103672:	77 dd                	ja     103651 <loadElf+0x1e9>
  103674:	83 45 f4 20          	addl   $0x20,-0xc(%ebp)
  103678:	ff 45 ec             	incl   -0x14(%ebp)
  10367b:	8b 45 dc             	mov    -0x24(%ebp),%eax
  10367e:	8b 40 2c             	mov    0x2c(%eax),%eax
  103681:	0f b7 c0             	movzwl %ax,%eax
  103684:	39 45 ec             	cmp    %eax,-0x14(%ebp)
  103687:	0f 8c 5e ff ff ff    	jl     1035eb <loadElf+0x183>
  10368d:	8b 45 dc             	mov    -0x24(%ebp),%eax
  103690:	8b 50 18             	mov    0x18(%eax),%edx
  103693:	8b 45 10             	mov    0x10(%ebp),%eax
  103696:	89 10                	mov    %edx,(%eax)
  103698:	b8 00 00 00 00       	mov    $0x0,%eax
  10369d:	89 f4                	mov    %esi,%esp
  10369f:	8d 65 f8             	lea    -0x8(%ebp),%esp
  1036a2:	5b                   	pop    %ebx
  1036a3:	5e                   	pop    %esi
  1036a4:	5d                   	pop    %ebp
  1036a5:	c3                   	ret    

001036a6 <loadUMain>:
  1036a6:	55                   	push   %ebp
  1036a7:	89 e5                	mov    %esp,%ebp
  1036a9:	53                   	push   %ebx
  1036aa:	81 ec a4 00 00 00    	sub    $0xa4,%esp
  1036b0:	e8 80 d1 ff ff       	call   100835 <__x86.get_pc_thunk.bx>
  1036b5:	81 c3 4b 29 00 00    	add    $0x294b,%ebx
  1036bb:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  1036c2:	c7 45 f0 34 00 00 00 	movl   $0x34,-0x10(%ebp)
  1036c9:	c7 45 ec 00 10 00 00 	movl   $0x1000,-0x14(%ebp)
  1036d0:	c7 45 e8 00 00 20 00 	movl   $0x200000,-0x18(%ebp)
  1036d7:	c7 45 e4 00 00 20 00 	movl   $0x200000,-0x1c(%ebp)
  1036de:	c7 85 60 ff ff ff 00 	movl   $0x0,-0xa0(%ebp)
  1036e5:	00 00 00 
  1036e8:	8d 83 fb e2 ff ff    	lea    -0x1d05(%ebx),%eax
  1036ee:	50                   	push   %eax
  1036ef:	8d 85 60 ff ff ff    	lea    -0xa0(%ebp),%eax
  1036f5:	50                   	push   %eax
  1036f6:	8d 85 64 ff ff ff    	lea    -0x9c(%ebp),%eax
  1036fc:	50                   	push   %eax
  1036fd:	c7 c0 60 80 10 00    	mov    $0x108060,%eax
  103703:	50                   	push   %eax
  103704:	e8 7c ce ff ff       	call   100585 <readInode>
  103709:	83 c4 10             	add    $0x10,%esp
  10370c:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  103713:	eb 31                	jmp    103746 <loadUMain+0xa0>
  103715:	c7 c0 60 80 10 00    	mov    $0x108060,%eax
  10371b:	8b 40 14             	mov    0x14(%eax),%eax
  10371e:	0f af 45 f4          	imul   -0xc(%ebp),%eax
  103722:	89 c2                	mov    %eax,%edx
  103724:	8b 45 e8             	mov    -0x18(%ebp),%eax
  103727:	01 d0                	add    %edx,%eax
  103729:	50                   	push   %eax
  10372a:	ff 75 f4             	pushl  -0xc(%ebp)
  10372d:	8d 85 64 ff ff ff    	lea    -0x9c(%ebp),%eax
  103733:	50                   	push   %eax
  103734:	c7 c0 60 80 10 00    	mov    $0x108060,%eax
  10373a:	50                   	push   %eax
  10373b:	e8 3a cd ff ff       	call   10047a <readBlock>
  103740:	83 c4 10             	add    $0x10,%esp
  103743:	ff 45 f4             	incl   -0xc(%ebp)
  103746:	8b 85 68 ff ff ff    	mov    -0x98(%ebp),%eax
  10374c:	39 45 f4             	cmp    %eax,-0xc(%ebp)
  10374f:	7c c4                	jl     103715 <loadUMain+0x6f>
  103751:	8b 45 e8             	mov    -0x18(%ebp),%eax
  103754:	8b 40 18             	mov    0x18(%eax),%eax
  103757:	89 45 e4             	mov    %eax,-0x1c(%ebp)
  10375a:	8b 45 e8             	mov    -0x18(%ebp),%eax
  10375d:	8b 40 1c             	mov    0x1c(%eax),%eax
  103760:	89 45 f0             	mov    %eax,-0x10(%ebp)
  103763:	8b 55 f0             	mov    -0x10(%ebp),%edx
  103766:	8b 45 e8             	mov    -0x18(%ebp),%eax
  103769:	01 d0                	add    %edx,%eax
  10376b:	8b 40 04             	mov    0x4(%eax),%eax
  10376e:	89 45 ec             	mov    %eax,-0x14(%ebp)
  103771:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  103778:	eb 1c                	jmp    103796 <loadUMain+0xf0>
  10377a:	8b 55 f4             	mov    -0xc(%ebp),%edx
  10377d:	8b 45 e8             	mov    -0x18(%ebp),%eax
  103780:	01 c2                	add    %eax,%edx
  103782:	8b 45 ec             	mov    -0x14(%ebp),%eax
  103785:	01 d0                	add    %edx,%eax
  103787:	8b 4d f4             	mov    -0xc(%ebp),%ecx
  10378a:	8b 55 e8             	mov    -0x18(%ebp),%edx
  10378d:	01 ca                	add    %ecx,%edx
  10378f:	8a 00                	mov    (%eax),%al
  103791:	88 02                	mov    %al,(%edx)
  103793:	ff 45 f4             	incl   -0xc(%ebp)
  103796:	81 7d f4 ff 8f 01 00 	cmpl   $0x18fff,-0xc(%ebp)
  10379d:	7e db                	jle    10377a <loadUMain+0xd4>
  10379f:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  1037a2:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  1037a5:	c9                   	leave  
  1037a6:	c3                   	ret    

001037a7 <initProc>:
  1037a7:	55                   	push   %ebp
  1037a8:	89 e5                	mov    %esp,%ebp
  1037aa:	53                   	push   %ebx
  1037ab:	83 ec 14             	sub    $0x14,%esp
  1037ae:	e8 82 d0 ff ff       	call   100835 <__x86.get_pc_thunk.bx>
  1037b3:	81 c3 4d 28 00 00    	add    $0x284d,%ebx
  1037b9:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  1037c0:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  1037c7:	eb 3b                	jmp    103804 <initProc+0x5d>
  1037c9:	c7 c1 60 84 10 00    	mov    $0x108460,%ecx
  1037cf:	8b 55 f4             	mov    -0xc(%ebp),%edx
  1037d2:	89 d0                	mov    %edx,%eax
  1037d4:	01 c0                	add    %eax,%eax
  1037d6:	01 d0                	add    %edx,%eax
  1037d8:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  1037df:	01 d0                	add    %edx,%eax
  1037e1:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  1037e8:	01 d0                	add    %edx,%eax
  1037ea:	89 c2                	mov    %eax,%edx
  1037ec:	c1 e2 04             	shl    $0x4,%edx
  1037ef:	01 d0                	add    %edx,%eax
  1037f1:	c1 e0 02             	shl    $0x2,%eax
  1037f4:	01 c8                	add    %ecx,%eax
  1037f6:	05 54 40 00 00       	add    $0x4054,%eax
  1037fb:	c7 00 03 00 00 00    	movl   $0x3,(%eax)
  103801:	ff 45 f4             	incl   -0xc(%ebp)
  103804:	83 7d f4 08          	cmpl   $0x8,-0xc(%ebp)
  103808:	7e bf                	jle    1037c9 <initProc+0x22>
  10380a:	c7 c0 60 84 10 00    	mov    $0x108460,%eax
  103810:	8d 90 4c 40 00 00    	lea    0x404c(%eax),%edx
  103816:	c7 c0 60 84 10 00    	mov    $0x108460,%eax
  10381c:	89 90 4c 40 00 00    	mov    %edx,0x404c(%eax)
  103822:	c7 c0 60 84 10 00    	mov    $0x108460,%eax
  103828:	8d 90 4c 40 00 00    	lea    0x404c(%eax),%edx
  10382e:	c7 c0 60 84 10 00    	mov    $0x108460,%eax
  103834:	89 90 50 40 00 00    	mov    %edx,0x4050(%eax)
  10383a:	c7 c0 60 84 10 00    	mov    $0x108460,%eax
  103840:	c7 80 54 40 00 00 01 	movl   $0x1,0x4054(%eax)
  103847:	00 00 00 
  10384a:	c7 c0 60 84 10 00    	mov    $0x108460,%eax
  103850:	c7 80 58 40 00 00 10 	movl   $0x10,0x4058(%eax)
  103857:	00 00 00 
  10385a:	c7 c0 60 84 10 00    	mov    $0x108460,%eax
  103860:	c7 80 5c 40 00 00 00 	movl   $0x0,0x405c(%eax)
  103867:	00 00 00 
  10386a:	c7 c0 60 84 10 00    	mov    $0x108460,%eax
  103870:	c7 80 60 40 00 00 00 	movl   $0x0,0x4060(%eax)
  103877:	00 00 00 
  10387a:	c7 c0 60 84 10 00    	mov    $0x108460,%eax
  103880:	8d 90 8c 80 00 00    	lea    0x808c(%eax),%edx
  103886:	c7 c0 60 84 10 00    	mov    $0x108460,%eax
  10388c:	89 90 d8 80 00 00    	mov    %edx,0x80d8(%eax)
  103892:	c7 c0 60 84 10 00    	mov    $0x108460,%eax
  103898:	8d 90 d8 80 00 00    	lea    0x80d8(%eax),%edx
  10389e:	c7 c0 60 84 10 00    	mov    $0x108460,%eax
  1038a4:	89 90 dc 80 00 00    	mov    %edx,0x80dc(%eax)
  1038aa:	c7 c0 60 84 10 00    	mov    $0x108460,%eax
  1038b0:	c7 80 e0 80 00 00 00 	movl   $0x0,0x80e0(%eax)
  1038b7:	00 00 00 
  1038ba:	c7 c0 60 84 10 00    	mov    $0x108460,%eax
  1038c0:	c7 80 e4 80 00 00 00 	movl   $0x0,0x80e4(%eax)
  1038c7:	00 00 00 
  1038ca:	c7 c0 60 84 10 00    	mov    $0x108460,%eax
  1038d0:	c7 80 e8 80 00 00 00 	movl   $0x0,0x80e8(%eax)
  1038d7:	00 00 00 
  1038da:	c7 c0 60 84 10 00    	mov    $0x108460,%eax
  1038e0:	c7 80 ec 80 00 00 01 	movl   $0x1,0x80ec(%eax)
  1038e7:	00 00 00 
  1038ea:	c7 c0 60 84 10 00    	mov    $0x108460,%eax
  1038f0:	c7 80 d4 80 00 00 23 	movl   $0x23,0x80d4(%eax)
  1038f7:	00 00 00 
  1038fa:	c7 c0 60 84 10 00    	mov    $0x108460,%eax
  103900:	c7 80 d0 80 00 00 00 	movl   $0x100000,0x80d0(%eax)
  103907:	00 10 00 
  10390a:	9c                   	pushf  
  10390b:	5a                   	pop    %edx
  10390c:	c7 c0 60 84 10 00    	mov    $0x108460,%eax
  103912:	89 90 cc 80 00 00    	mov    %edx,0x80cc(%eax)
  103918:	c7 c0 60 84 10 00    	mov    $0x108460,%eax
  10391e:	8b 80 cc 80 00 00    	mov    0x80cc(%eax),%eax
  103924:	80 cc 02             	or     $0x2,%ah
  103927:	89 c2                	mov    %eax,%edx
  103929:	c7 c0 60 84 10 00    	mov    $0x108460,%eax
  10392f:	89 90 cc 80 00 00    	mov    %edx,0x80cc(%eax)
  103935:	c7 c0 60 84 10 00    	mov    $0x108460,%eax
  10393b:	c7 80 c8 80 00 00 1b 	movl   $0x1b,0x80c8(%eax)
  103942:	00 00 00 
  103945:	e8 5c fd ff ff       	call   1036a6 <loadUMain>
  10394a:	89 c2                	mov    %eax,%edx
  10394c:	c7 c0 60 84 10 00    	mov    $0x108460,%eax
  103952:	89 90 c4 80 00 00    	mov    %edx,0x80c4(%eax)
  103958:	c7 c0 60 84 10 00    	mov    $0x108460,%eax
  10395e:	c7 80 98 80 00 00 23 	movl   $0x23,0x8098(%eax)
  103965:	00 00 00 
  103968:	c7 c0 60 84 10 00    	mov    $0x108460,%eax
  10396e:	c7 80 94 80 00 00 23 	movl   $0x23,0x8094(%eax)
  103975:	00 00 00 
  103978:	c7 c0 60 84 10 00    	mov    $0x108460,%eax
  10397e:	c7 80 90 80 00 00 23 	movl   $0x23,0x8090(%eax)
  103985:	00 00 00 
  103988:	c7 c0 60 84 10 00    	mov    $0x108460,%eax
  10398e:	c7 80 8c 80 00 00 23 	movl   $0x23,0x808c(%eax)
  103995:	00 00 00 
  103998:	c7 c0 44 80 10 00    	mov    $0x108044,%eax
  10399e:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
  1039a4:	c7 c0 60 84 10 00    	mov    $0x108460,%eax
  1039aa:	8b a0 4c 40 00 00    	mov    0x404c(%eax),%esp
  1039b0:	e8 ef f3 ff ff       	call   102da4 <enableInterrupt>
  1039b5:	cd 20                	int    $0x20
  1039b7:	e8 d7 f3 ff ff       	call   102d93 <waitForInterrupt>
  1039bc:	eb f9                	jmp    1039b7 <initProc+0x210>

001039be <inByte>:
  1039be:	55                   	push   %ebp
  1039bf:	89 e5                	mov    %esp,%ebp
  1039c1:	83 ec 14             	sub    $0x14,%esp
  1039c4:	e8 7c ca ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  1039c9:	05 37 26 00 00       	add    $0x2637,%eax
  1039ce:	8b 45 08             	mov    0x8(%ebp),%eax
  1039d1:	66 89 45 ec          	mov    %ax,-0x14(%ebp)
  1039d5:	8b 45 ec             	mov    -0x14(%ebp),%eax
  1039d8:	89 c2                	mov    %eax,%edx
  1039da:	ec                   	in     (%dx),%al
  1039db:	88 45 ff             	mov    %al,-0x1(%ebp)
  1039de:	8a 45 ff             	mov    -0x1(%ebp),%al
  1039e1:	c9                   	leave  
  1039e2:	c3                   	ret    

001039e3 <outByte>:
  1039e3:	55                   	push   %ebp
  1039e4:	89 e5                	mov    %esp,%ebp
  1039e6:	83 ec 08             	sub    $0x8,%esp
  1039e9:	e8 57 ca ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  1039ee:	05 12 26 00 00       	add    $0x2612,%eax
  1039f3:	8b 45 08             	mov    0x8(%ebp),%eax
  1039f6:	8b 55 0c             	mov    0xc(%ebp),%edx
  1039f9:	66 89 45 fc          	mov    %ax,-0x4(%ebp)
  1039fd:	88 d0                	mov    %dl,%al
  1039ff:	88 45 f8             	mov    %al,-0x8(%ebp)
  103a02:	8a 45 f8             	mov    -0x8(%ebp),%al
  103a05:	8b 55 fc             	mov    -0x4(%ebp),%edx
  103a08:	ee                   	out    %al,(%dx)
  103a09:	90                   	nop
  103a0a:	c9                   	leave  
  103a0b:	c3                   	ret    

00103a0c <initSerial>:
  103a0c:	55                   	push   %ebp
  103a0d:	89 e5                	mov    %esp,%ebp
  103a0f:	e8 31 ca ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  103a14:	05 ec 25 00 00       	add    $0x25ec,%eax
  103a19:	6a 00                	push   $0x0
  103a1b:	68 f9 03 00 00       	push   $0x3f9
  103a20:	e8 be ff ff ff       	call   1039e3 <outByte>
  103a25:	83 c4 08             	add    $0x8,%esp
  103a28:	6a 80                	push   $0xffffff80
  103a2a:	68 fb 03 00 00       	push   $0x3fb
  103a2f:	e8 af ff ff ff       	call   1039e3 <outByte>
  103a34:	83 c4 08             	add    $0x8,%esp
  103a37:	6a 01                	push   $0x1
  103a39:	68 f8 03 00 00       	push   $0x3f8
  103a3e:	e8 a0 ff ff ff       	call   1039e3 <outByte>
  103a43:	83 c4 08             	add    $0x8,%esp
  103a46:	6a 00                	push   $0x0
  103a48:	68 f9 03 00 00       	push   $0x3f9
  103a4d:	e8 91 ff ff ff       	call   1039e3 <outByte>
  103a52:	83 c4 08             	add    $0x8,%esp
  103a55:	6a 03                	push   $0x3
  103a57:	68 fb 03 00 00       	push   $0x3fb
  103a5c:	e8 82 ff ff ff       	call   1039e3 <outByte>
  103a61:	83 c4 08             	add    $0x8,%esp
  103a64:	6a c7                	push   $0xffffffc7
  103a66:	68 fa 03 00 00       	push   $0x3fa
  103a6b:	e8 73 ff ff ff       	call   1039e3 <outByte>
  103a70:	83 c4 08             	add    $0x8,%esp
  103a73:	6a 0b                	push   $0xb
  103a75:	68 fc 03 00 00       	push   $0x3fc
  103a7a:	e8 64 ff ff ff       	call   1039e3 <outByte>
  103a7f:	83 c4 08             	add    $0x8,%esp
  103a82:	90                   	nop
  103a83:	c9                   	leave  
  103a84:	c3                   	ret    

00103a85 <serialIdle>:
  103a85:	55                   	push   %ebp
  103a86:	89 e5                	mov    %esp,%ebp
  103a88:	e8 b8 c9 ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  103a8d:	05 73 25 00 00       	add    $0x2573,%eax
  103a92:	68 fd 03 00 00       	push   $0x3fd
  103a97:	e8 22 ff ff ff       	call   1039be <inByte>
  103a9c:	83 c4 04             	add    $0x4,%esp
  103a9f:	0f b6 c0             	movzbl %al,%eax
  103aa2:	83 e0 20             	and    $0x20,%eax
  103aa5:	85 c0                	test   %eax,%eax
  103aa7:	0f 95 c0             	setne  %al
  103aaa:	0f b6 c0             	movzbl %al,%eax
  103aad:	c9                   	leave  
  103aae:	c3                   	ret    

00103aaf <putChar>:
  103aaf:	55                   	push   %ebp
  103ab0:	89 e5                	mov    %esp,%ebp
  103ab2:	83 ec 04             	sub    $0x4,%esp
  103ab5:	e8 8b c9 ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  103aba:	05 46 25 00 00       	add    $0x2546,%eax
  103abf:	8b 45 08             	mov    0x8(%ebp),%eax
  103ac2:	88 45 fc             	mov    %al,-0x4(%ebp)
  103ac5:	90                   	nop
  103ac6:	e8 ba ff ff ff       	call   103a85 <serialIdle>
  103acb:	83 f8 01             	cmp    $0x1,%eax
  103ace:	75 f6                	jne    103ac6 <putChar+0x17>
  103ad0:	0f be 45 fc          	movsbl -0x4(%ebp),%eax
  103ad4:	50                   	push   %eax
  103ad5:	68 f8 03 00 00       	push   $0x3f8
  103ada:	e8 04 ff ff ff       	call   1039e3 <outByte>
  103adf:	83 c4 08             	add    $0x8,%esp
  103ae2:	90                   	nop
  103ae3:	c9                   	leave  
  103ae4:	c3                   	ret    

00103ae5 <putString>:
  103ae5:	55                   	push   %ebp
  103ae6:	89 e5                	mov    %esp,%ebp
  103ae8:	83 ec 10             	sub    $0x10,%esp
  103aeb:	e8 55 c9 ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  103af0:	05 10 25 00 00       	add    $0x2510,%eax
  103af5:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  103afc:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
  103b00:	74 30                	je     103b32 <putString+0x4d>
  103b02:	eb 1e                	jmp    103b22 <putString+0x3d>
  103b04:	8b 45 fc             	mov    -0x4(%ebp),%eax
  103b07:	8d 50 01             	lea    0x1(%eax),%edx
  103b0a:	89 55 fc             	mov    %edx,-0x4(%ebp)
  103b0d:	89 c2                	mov    %eax,%edx
  103b0f:	8b 45 08             	mov    0x8(%ebp),%eax
  103b12:	01 d0                	add    %edx,%eax
  103b14:	8a 00                	mov    (%eax),%al
  103b16:	0f be c0             	movsbl %al,%eax
  103b19:	50                   	push   %eax
  103b1a:	e8 90 ff ff ff       	call   103aaf <putChar>
  103b1f:	83 c4 04             	add    $0x4,%esp
  103b22:	8b 55 fc             	mov    -0x4(%ebp),%edx
  103b25:	8b 45 08             	mov    0x8(%ebp),%eax
  103b28:	01 d0                	add    %edx,%eax
  103b2a:	8a 00                	mov    (%eax),%al
  103b2c:	84 c0                	test   %al,%al
  103b2e:	75 d4                	jne    103b04 <putString+0x1f>
  103b30:	eb 01                	jmp    103b33 <putString+0x4e>
  103b32:	90                   	nop
  103b33:	c9                   	leave  
  103b34:	c3                   	ret    

00103b35 <putInt>:
  103b35:	55                   	push   %ebp
  103b36:	89 e5                	mov    %esp,%ebp
  103b38:	83 ec 30             	sub    $0x30,%esp
  103b3b:	e8 05 c9 ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  103b40:	05 c0 24 00 00       	add    $0x24c0,%eax
  103b45:	8d 45 dc             	lea    -0x24(%ebp),%eax
  103b48:	83 c0 1f             	add    $0x1f,%eax
  103b4b:	89 45 fc             	mov    %eax,-0x4(%ebp)
  103b4e:	8b 45 fc             	mov    -0x4(%ebp),%eax
  103b51:	c6 00 00             	movb   $0x0,(%eax)
  103b54:	ff 4d fc             	decl   -0x4(%ebp)
  103b57:	8b 45 fc             	mov    -0x4(%ebp),%eax
  103b5a:	c6 00 0a             	movb   $0xa,(%eax)
  103b5d:	8b 45 08             	mov    0x8(%ebp),%eax
  103b60:	b9 0a 00 00 00       	mov    $0xa,%ecx
  103b65:	99                   	cltd   
  103b66:	f7 f9                	idiv   %ecx
  103b68:	89 d0                	mov    %edx,%eax
  103b6a:	83 c0 30             	add    $0x30,%eax
  103b6d:	ff 4d fc             	decl   -0x4(%ebp)
  103b70:	88 c2                	mov    %al,%dl
  103b72:	8b 45 fc             	mov    -0x4(%ebp),%eax
  103b75:	88 10                	mov    %dl,(%eax)
  103b77:	8b 4d 08             	mov    0x8(%ebp),%ecx
  103b7a:	b8 67 66 66 66       	mov    $0x66666667,%eax
  103b7f:	f7 e9                	imul   %ecx
  103b81:	c1 fa 02             	sar    $0x2,%edx
  103b84:	89 c8                	mov    %ecx,%eax
  103b86:	c1 f8 1f             	sar    $0x1f,%eax
  103b89:	29 c2                	sub    %eax,%edx
  103b8b:	89 d0                	mov    %edx,%eax
  103b8d:	89 45 08             	mov    %eax,0x8(%ebp)
  103b90:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
  103b94:	75 c7                	jne    103b5d <putInt+0x28>
  103b96:	ff 75 fc             	pushl  -0x4(%ebp)
  103b99:	e8 47 ff ff ff       	call   103ae5 <putString>
  103b9e:	83 c4 04             	add    $0x4,%esp
  103ba1:	90                   	nop
  103ba2:	c9                   	leave  
  103ba3:	c3                   	ret    

00103ba4 <outByte>:
  103ba4:	55                   	push   %ebp
  103ba5:	89 e5                	mov    %esp,%ebp
  103ba7:	83 ec 08             	sub    $0x8,%esp
  103baa:	e8 96 c8 ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  103baf:	05 51 24 00 00       	add    $0x2451,%eax
  103bb4:	8b 45 08             	mov    0x8(%ebp),%eax
  103bb7:	8b 55 0c             	mov    0xc(%ebp),%edx
  103bba:	66 89 45 fc          	mov    %ax,-0x4(%ebp)
  103bbe:	88 d0                	mov    %dl,%al
  103bc0:	88 45 f8             	mov    %al,-0x8(%ebp)
  103bc3:	8a 45 f8             	mov    -0x8(%ebp),%al
  103bc6:	8b 55 fc             	mov    -0x4(%ebp),%edx
  103bc9:	ee                   	out    %al,(%dx)
  103bca:	90                   	nop
  103bcb:	c9                   	leave  
  103bcc:	c3                   	ret    

00103bcd <initTimer>:
  103bcd:	55                   	push   %ebp
  103bce:	89 e5                	mov    %esp,%ebp
  103bd0:	83 ec 10             	sub    $0x10,%esp
  103bd3:	e8 6d c8 ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  103bd8:	05 28 24 00 00       	add    $0x2428,%eax
  103bdd:	c7 45 fc 9b 2e 00 00 	movl   $0x2e9b,-0x4(%ebp)
  103be4:	6a 34                	push   $0x34
  103be6:	6a 43                	push   $0x43
  103be8:	e8 b7 ff ff ff       	call   103ba4 <outByte>
  103bed:	83 c4 08             	add    $0x8,%esp
  103bf0:	8b 45 fc             	mov    -0x4(%ebp),%eax
  103bf3:	25 ff 00 00 80       	and    $0x800000ff,%eax
  103bf8:	85 c0                	test   %eax,%eax
  103bfa:	79 07                	jns    103c03 <initTimer+0x36>
  103bfc:	48                   	dec    %eax
  103bfd:	0d 00 ff ff ff       	or     $0xffffff00,%eax
  103c02:	40                   	inc    %eax
  103c03:	0f be c0             	movsbl %al,%eax
  103c06:	50                   	push   %eax
  103c07:	6a 40                	push   $0x40
  103c09:	e8 96 ff ff ff       	call   103ba4 <outByte>
  103c0e:	83 c4 08             	add    $0x8,%esp
  103c11:	8b 45 fc             	mov    -0x4(%ebp),%eax
  103c14:	85 c0                	test   %eax,%eax
  103c16:	79 05                	jns    103c1d <initTimer+0x50>
  103c18:	05 ff 00 00 00       	add    $0xff,%eax
  103c1d:	c1 f8 08             	sar    $0x8,%eax
  103c20:	0f be c0             	movsbl %al,%eax
  103c23:	50                   	push   %eax
  103c24:	6a 40                	push   $0x40
  103c26:	e8 79 ff ff ff       	call   103ba4 <outByte>
  103c2b:	83 c4 08             	add    $0x8,%esp
  103c2e:	90                   	nop
  103c2f:	c9                   	leave  
  103c30:	c3                   	ret    

00103c31 <outByte>:
  103c31:	55                   	push   %ebp
  103c32:	89 e5                	mov    %esp,%ebp
  103c34:	83 ec 08             	sub    $0x8,%esp
  103c37:	e8 09 c8 ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  103c3c:	05 c4 23 00 00       	add    $0x23c4,%eax
  103c41:	8b 45 08             	mov    0x8(%ebp),%eax
  103c44:	8b 55 0c             	mov    0xc(%ebp),%edx
  103c47:	66 89 45 fc          	mov    %ax,-0x4(%ebp)
  103c4b:	88 d0                	mov    %dl,%al
  103c4d:	88 45 f8             	mov    %al,-0x8(%ebp)
  103c50:	8a 45 f8             	mov    -0x8(%ebp),%al
  103c53:	8b 55 fc             	mov    -0x4(%ebp),%edx
  103c56:	ee                   	out    %al,(%dx)
  103c57:	90                   	nop
  103c58:	c9                   	leave  
  103c59:	c3                   	ret    

00103c5a <initVga>:
  103c5a:	55                   	push   %ebp
  103c5b:	89 e5                	mov    %esp,%ebp
  103c5d:	83 ec 08             	sub    $0x8,%esp
  103c60:	e8 e0 c7 ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  103c65:	05 9b 23 00 00       	add    $0x239b,%eax
  103c6a:	c7 80 0c 02 00 00 00 	movl   $0x0,0x20c(%eax)
  103c71:	00 00 00 
  103c74:	c7 80 10 02 00 00 00 	movl   $0x0,0x210(%eax)
  103c7b:	00 00 00 
  103c7e:	c7 80 14 02 00 00 00 	movl   $0x0,0x214(%eax)
  103c85:	00 00 00 
  103c88:	e8 12 00 00 00       	call   103c9f <clearScreen>
  103c8d:	83 ec 08             	sub    $0x8,%esp
  103c90:	6a 00                	push   $0x0
  103c92:	6a 00                	push   $0x0
  103c94:	e8 5a 00 00 00       	call   103cf3 <updateCursor>
  103c99:	83 c4 10             	add    $0x10,%esp
  103c9c:	90                   	nop
  103c9d:	c9                   	leave  
  103c9e:	c3                   	ret    

00103c9f <clearScreen>:
  103c9f:	55                   	push   %ebp
  103ca0:	89 e5                	mov    %esp,%ebp
  103ca2:	83 ec 10             	sub    $0x10,%esp
  103ca5:	e8 9b c7 ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  103caa:	05 56 23 00 00       	add    $0x2356,%eax
  103caf:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  103cb6:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
  103cbd:	66 c7 45 f6 00 0c    	movw   $0xc00,-0xa(%ebp)
  103cc3:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  103cca:	eb 1b                	jmp    103ce7 <clearScreen+0x48>
  103ccc:	8b 45 fc             	mov    -0x4(%ebp),%eax
  103ccf:	01 c0                	add    %eax,%eax
  103cd1:	89 45 f8             	mov    %eax,-0x8(%ebp)
  103cd4:	8b 45 f8             	mov    -0x8(%ebp),%eax
  103cd7:	8d 90 00 80 0b 00    	lea    0xb8000(%eax),%edx
  103cdd:	66 8b 45 f6          	mov    -0xa(%ebp),%ax
  103ce1:	66 89 02             	mov    %ax,(%edx)
  103ce4:	ff 45 fc             	incl   -0x4(%ebp)
  103ce7:	81 7d fc cf 07 00 00 	cmpl   $0x7cf,-0x4(%ebp)
  103cee:	7e dc                	jle    103ccc <clearScreen+0x2d>
  103cf0:	90                   	nop
  103cf1:	c9                   	leave  
  103cf2:	c3                   	ret    

00103cf3 <updateCursor>:
  103cf3:	55                   	push   %ebp
  103cf4:	89 e5                	mov    %esp,%ebp
  103cf6:	83 ec 10             	sub    $0x10,%esp
  103cf9:	e8 47 c7 ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  103cfe:	05 02 23 00 00       	add    $0x2302,%eax
  103d03:	8b 55 08             	mov    0x8(%ebp),%edx
  103d06:	89 d0                	mov    %edx,%eax
  103d08:	c1 e0 02             	shl    $0x2,%eax
  103d0b:	01 d0                	add    %edx,%eax
  103d0d:	c1 e0 04             	shl    $0x4,%eax
  103d10:	89 c2                	mov    %eax,%edx
  103d12:	8b 45 0c             	mov    0xc(%ebp),%eax
  103d15:	01 d0                	add    %edx,%eax
  103d17:	89 45 fc             	mov    %eax,-0x4(%ebp)
  103d1a:	6a 0f                	push   $0xf
  103d1c:	68 d4 03 00 00       	push   $0x3d4
  103d21:	e8 0b ff ff ff       	call   103c31 <outByte>
  103d26:	83 c4 08             	add    $0x8,%esp
  103d29:	8b 45 fc             	mov    -0x4(%ebp),%eax
  103d2c:	0f be c0             	movsbl %al,%eax
  103d2f:	50                   	push   %eax
  103d30:	68 d5 03 00 00       	push   $0x3d5
  103d35:	e8 f7 fe ff ff       	call   103c31 <outByte>
  103d3a:	83 c4 08             	add    $0x8,%esp
  103d3d:	6a 0e                	push   $0xe
  103d3f:	68 d4 03 00 00       	push   $0x3d4
  103d44:	e8 e8 fe ff ff       	call   103c31 <outByte>
  103d49:	83 c4 08             	add    $0x8,%esp
  103d4c:	8b 45 fc             	mov    -0x4(%ebp),%eax
  103d4f:	c1 f8 08             	sar    $0x8,%eax
  103d52:	0f be c0             	movsbl %al,%eax
  103d55:	50                   	push   %eax
  103d56:	68 d5 03 00 00       	push   $0x3d5
  103d5b:	e8 d1 fe ff ff       	call   103c31 <outByte>
  103d60:	83 c4 08             	add    $0x8,%esp
  103d63:	90                   	nop
  103d64:	c9                   	leave  
  103d65:	c3                   	ret    

00103d66 <scrollScreen>:
  103d66:	55                   	push   %ebp
  103d67:	89 e5                	mov    %esp,%ebp
  103d69:	53                   	push   %ebx
  103d6a:	83 ec 10             	sub    $0x10,%esp
  103d6d:	e8 42 eb ff ff       	call   1028b4 <__x86.get_pc_thunk.dx>
  103d72:	81 c2 8e 22 00 00    	add    $0x228e,%edx
  103d78:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
  103d7f:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  103d86:	66 c7 45 f2 00 00    	movw   $0x0,-0xe(%ebp)
  103d8c:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
  103d93:	eb 2b                	jmp    103dc0 <scrollScreen+0x5a>
  103d95:	8b 45 f8             	mov    -0x8(%ebp),%eax
  103d98:	01 c0                	add    %eax,%eax
  103d9a:	89 45 f4             	mov    %eax,-0xc(%ebp)
  103d9d:	8b 45 f4             	mov    -0xc(%ebp),%eax
  103da0:	05 00 80 0b 00       	add    $0xb8000,%eax
  103da5:	66 8b 00             	mov    (%eax),%ax
  103da8:	66 89 45 f2          	mov    %ax,-0xe(%ebp)
  103dac:	c7 c1 60 c9 12 00    	mov    $0x12c960,%ecx
  103db2:	8b 5d f8             	mov    -0x8(%ebp),%ebx
  103db5:	66 8b 45 f2          	mov    -0xe(%ebp),%ax
  103db9:	66 89 04 59          	mov    %ax,(%ecx,%ebx,2)
  103dbd:	ff 45 f8             	incl   -0x8(%ebp)
  103dc0:	81 7d f8 cf 07 00 00 	cmpl   $0x7cf,-0x8(%ebp)
  103dc7:	7e cc                	jle    103d95 <scrollScreen+0x2f>
  103dc9:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
  103dd0:	eb 2f                	jmp    103e01 <scrollScreen+0x9b>
  103dd2:	8b 45 f8             	mov    -0x8(%ebp),%eax
  103dd5:	01 c0                	add    %eax,%eax
  103dd7:	89 45 f4             	mov    %eax,-0xc(%ebp)
  103dda:	8b 45 f8             	mov    -0x8(%ebp),%eax
  103ddd:	8d 48 50             	lea    0x50(%eax),%ecx
  103de0:	c7 c0 60 c9 12 00    	mov    $0x12c960,%eax
  103de6:	66 8b 04 48          	mov    (%eax,%ecx,2),%ax
  103dea:	66 89 45 f2          	mov    %ax,-0xe(%ebp)
  103dee:	8b 45 f4             	mov    -0xc(%ebp),%eax
  103df1:	8d 88 00 80 0b 00    	lea    0xb8000(%eax),%ecx
  103df7:	66 8b 45 f2          	mov    -0xe(%ebp),%ax
  103dfb:	66 89 01             	mov    %ax,(%ecx)
  103dfe:	ff 45 f8             	incl   -0x8(%ebp)
  103e01:	81 7d f8 7f 07 00 00 	cmpl   $0x77f,-0x8(%ebp)
  103e08:	7e c8                	jle    103dd2 <scrollScreen+0x6c>
  103e0a:	66 c7 45 f2 00 0c    	movw   $0xc00,-0xe(%ebp)
  103e10:	c7 45 f8 80 07 00 00 	movl   $0x780,-0x8(%ebp)
  103e17:	eb 1b                	jmp    103e34 <scrollScreen+0xce>
  103e19:	8b 45 f8             	mov    -0x8(%ebp),%eax
  103e1c:	01 c0                	add    %eax,%eax
  103e1e:	89 45 f4             	mov    %eax,-0xc(%ebp)
  103e21:	8b 45 f4             	mov    -0xc(%ebp),%eax
  103e24:	8d 90 00 80 0b 00    	lea    0xb8000(%eax),%edx
  103e2a:	66 8b 45 f2          	mov    -0xe(%ebp),%ax
  103e2e:	66 89 02             	mov    %ax,(%edx)
  103e31:	ff 45 f8             	incl   -0x8(%ebp)
  103e34:	81 7d f8 cf 07 00 00 	cmpl   $0x7cf,-0x8(%ebp)
  103e3b:	7e dc                	jle    103e19 <scrollScreen+0xb3>
  103e3d:	90                   	nop
  103e3e:	83 c4 10             	add    $0x10,%esp
  103e41:	5b                   	pop    %ebx
  103e42:	5d                   	pop    %ebp
  103e43:	c3                   	ret    

00103e44 <waitForInterrupt>:
  103e44:	55                   	push   %ebp
  103e45:	89 e5                	mov    %esp,%ebp
  103e47:	e8 f9 c5 ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  103e4c:	05 b4 21 00 00       	add    $0x21b4,%eax
  103e51:	f4                   	hlt    
  103e52:	90                   	nop
  103e53:	5d                   	pop    %ebp
  103e54:	c3                   	ret    

00103e55 <disableInterrupt>:
  103e55:	55                   	push   %ebp
  103e56:	89 e5                	mov    %esp,%ebp
  103e58:	e8 e8 c5 ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  103e5d:	05 a3 21 00 00       	add    $0x21a3,%eax
  103e62:	fa                   	cli    
  103e63:	90                   	nop
  103e64:	5d                   	pop    %ebp
  103e65:	c3                   	ret    

00103e66 <i2A>:
  103e66:	55                   	push   %ebp
  103e67:	89 e5                	mov    %esp,%ebp
  103e69:	83 ec 10             	sub    $0x10,%esp
  103e6c:	e8 d4 c5 ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  103e71:	05 8f 21 00 00       	add    $0x218f,%eax
  103e76:	8d 80 35 02 00 00    	lea    0x235(%eax),%eax
  103e7c:	89 45 fc             	mov    %eax,-0x4(%ebp)
  103e7f:	8b 45 08             	mov    0x8(%ebp),%eax
  103e82:	b9 0a 00 00 00       	mov    $0xa,%ecx
  103e87:	99                   	cltd   
  103e88:	f7 f9                	idiv   %ecx
  103e8a:	89 d0                	mov    %edx,%eax
  103e8c:	83 c0 30             	add    $0x30,%eax
  103e8f:	ff 4d fc             	decl   -0x4(%ebp)
  103e92:	88 c2                	mov    %al,%dl
  103e94:	8b 45 fc             	mov    -0x4(%ebp),%eax
  103e97:	88 10                	mov    %dl,(%eax)
  103e99:	8b 4d 08             	mov    0x8(%ebp),%ecx
  103e9c:	b8 67 66 66 66       	mov    $0x66666667,%eax
  103ea1:	f7 e9                	imul   %ecx
  103ea3:	c1 fa 02             	sar    $0x2,%edx
  103ea6:	89 c8                	mov    %ecx,%eax
  103ea8:	c1 f8 1f             	sar    $0x1f,%eax
  103eab:	29 c2                	sub    %eax,%edx
  103ead:	89 d0                	mov    %edx,%eax
  103eaf:	89 45 08             	mov    %eax,0x8(%ebp)
  103eb2:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
  103eb6:	75 c7                	jne    103e7f <i2A+0x19>
  103eb8:	8b 45 fc             	mov    -0x4(%ebp),%eax
  103ebb:	c9                   	leave  
  103ebc:	c3                   	ret    

00103ebd <append>:
  103ebd:	55                   	push   %ebp
  103ebe:	89 e5                	mov    %esp,%ebp
  103ec0:	53                   	push   %ebx
  103ec1:	e8 7f c5 ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  103ec6:	05 3a 21 00 00       	add    $0x213a,%eax
  103ecb:	eb 1a                	jmp    103ee7 <append+0x2a>
  103ecd:	8b 55 0c             	mov    0xc(%ebp),%edx
  103ed0:	8d 42 01             	lea    0x1(%edx),%eax
  103ed3:	89 45 0c             	mov    %eax,0xc(%ebp)
  103ed6:	8b 45 08             	mov    0x8(%ebp),%eax
  103ed9:	8b 00                	mov    (%eax),%eax
  103edb:	8d 58 01             	lea    0x1(%eax),%ebx
  103ede:	8b 4d 08             	mov    0x8(%ebp),%ecx
  103ee1:	89 19                	mov    %ebx,(%ecx)
  103ee3:	8a 12                	mov    (%edx),%dl
  103ee5:	88 10                	mov    %dl,(%eax)
  103ee7:	8b 45 0c             	mov    0xc(%ebp),%eax
  103eea:	8a 00                	mov    (%eax),%al
  103eec:	84 c0                	test   %al,%al
  103eee:	75 dd                	jne    103ecd <append+0x10>
  103ef0:	90                   	nop
  103ef1:	5b                   	pop    %ebx
  103ef2:	5d                   	pop    %ebp
  103ef3:	c3                   	ret    

00103ef4 <displayMessage>:
  103ef4:	55                   	push   %ebp
  103ef5:	89 e5                	mov    %esp,%ebp
  103ef7:	53                   	push   %ebx
  103ef8:	83 ec 14             	sub    $0x14,%esp
  103efb:	e8 35 c9 ff ff       	call   100835 <__x86.get_pc_thunk.bx>
  103f00:	81 c3 00 21 00 00    	add    $0x2100,%ebx
  103f06:	8d 83 32 00 00 00    	lea    0x32(%ebx),%eax
  103f0c:	89 45 f4             	mov    %eax,-0xc(%ebp)
  103f0f:	ff 75 08             	pushl  0x8(%ebp)
  103f12:	8d 45 f4             	lea    -0xc(%ebp),%eax
  103f15:	50                   	push   %eax
  103f16:	e8 a2 ff ff ff       	call   103ebd <append>
  103f1b:	83 c4 08             	add    $0x8,%esp
  103f1e:	8d 83 08 e3 ff ff    	lea    -0x1cf8(%ebx),%eax
  103f24:	50                   	push   %eax
  103f25:	8d 45 f4             	lea    -0xc(%ebp),%eax
  103f28:	50                   	push   %eax
  103f29:	e8 8f ff ff ff       	call   103ebd <append>
  103f2e:	83 c4 08             	add    $0x8,%esp
  103f31:	ff 75 0c             	pushl  0xc(%ebp)
  103f34:	e8 2d ff ff ff       	call   103e66 <i2A>
  103f39:	83 c4 04             	add    $0x4,%esp
  103f3c:	50                   	push   %eax
  103f3d:	8d 45 f4             	lea    -0xc(%ebp),%eax
  103f40:	50                   	push   %eax
  103f41:	e8 77 ff ff ff       	call   103ebd <append>
  103f46:	83 c4 08             	add    $0x8,%esp
  103f49:	8d 83 0a e3 ff ff    	lea    -0x1cf6(%ebx),%eax
  103f4f:	50                   	push   %eax
  103f50:	8d 45 f4             	lea    -0xc(%ebp),%eax
  103f53:	50                   	push   %eax
  103f54:	e8 64 ff ff ff       	call   103ebd <append>
  103f59:	83 c4 08             	add    $0x8,%esp
  103f5c:	8d 83 20 00 00 00    	lea    0x20(%ebx),%eax
  103f62:	89 45 f4             	mov    %eax,-0xc(%ebp)
  103f65:	eb 1b                	jmp    103f82 <displayMessage+0x8e>
  103f67:	8b 45 f4             	mov    -0xc(%ebp),%eax
  103f6a:	8a 00                	mov    (%eax),%al
  103f6c:	0f be c0             	movsbl %al,%eax
  103f6f:	83 ec 0c             	sub    $0xc,%esp
  103f72:	50                   	push   %eax
  103f73:	e8 37 fb ff ff       	call   103aaf <putChar>
  103f78:	83 c4 10             	add    $0x10,%esp
  103f7b:	8b 45 f4             	mov    -0xc(%ebp),%eax
  103f7e:	40                   	inc    %eax
  103f7f:	89 45 f4             	mov    %eax,-0xc(%ebp)
  103f82:	8b 45 f4             	mov    -0xc(%ebp),%eax
  103f85:	8a 00                	mov    (%eax),%al
  103f87:	84 c0                	test   %al,%al
  103f89:	75 dc                	jne    103f67 <displayMessage+0x73>
  103f8b:	90                   	nop
  103f8c:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  103f8f:	c9                   	leave  
  103f90:	c3                   	ret    

00103f91 <abort>:
  103f91:	55                   	push   %ebp
  103f92:	89 e5                	mov    %esp,%ebp
  103f94:	83 ec 08             	sub    $0x8,%esp
  103f97:	e8 a9 c4 ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  103f9c:	05 64 20 00 00       	add    $0x2064,%eax
  103fa1:	e8 af fe ff ff       	call   103e55 <disableInterrupt>
  103fa6:	83 ec 08             	sub    $0x8,%esp
  103fa9:	ff 75 0c             	pushl  0xc(%ebp)
  103fac:	ff 75 08             	pushl  0x8(%ebp)
  103faf:	e8 40 ff ff ff       	call   103ef4 <displayMessage>
  103fb4:	83 c4 10             	add    $0x10,%esp
  103fb7:	e8 88 fe ff ff       	call   103e44 <waitForInterrupt>
  103fbc:	eb f9                	jmp    103fb7 <abort+0x26>

00103fbe <stringChr>:
  103fbe:	55                   	push   %ebp
  103fbf:	89 e5                	mov    %esp,%ebp
  103fc1:	83 ec 14             	sub    $0x14,%esp
  103fc4:	e8 7c c4 ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  103fc9:	05 37 20 00 00       	add    $0x2037,%eax
  103fce:	8b 45 0c             	mov    0xc(%ebp),%eax
  103fd1:	88 45 ec             	mov    %al,-0x14(%ebp)
  103fd4:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  103fdb:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
  103fdf:	75 31                	jne    104012 <stringChr+0x54>
  103fe1:	8b 45 10             	mov    0x10(%ebp),%eax
  103fe4:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
  103fea:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  103fef:	eb 3c                	jmp    10402d <stringChr+0x6f>
  103ff1:	8b 55 fc             	mov    -0x4(%ebp),%edx
  103ff4:	8b 45 08             	mov    0x8(%ebp),%eax
  103ff7:	01 d0                	add    %edx,%eax
  103ff9:	8a 00                	mov    (%eax),%al
  103ffb:	38 45 ec             	cmp    %al,-0x14(%ebp)
  103ffe:	75 0f                	jne    10400f <stringChr+0x51>
  104000:	8b 45 10             	mov    0x10(%ebp),%eax
  104003:	8b 55 fc             	mov    -0x4(%ebp),%edx
  104006:	89 10                	mov    %edx,(%eax)
  104008:	b8 00 00 00 00       	mov    $0x0,%eax
  10400d:	eb 1e                	jmp    10402d <stringChr+0x6f>
  10400f:	ff 45 fc             	incl   -0x4(%ebp)
  104012:	8b 55 fc             	mov    -0x4(%ebp),%edx
  104015:	8b 45 08             	mov    0x8(%ebp),%eax
  104018:	01 d0                	add    %edx,%eax
  10401a:	8a 00                	mov    (%eax),%al
  10401c:	84 c0                	test   %al,%al
  10401e:	75 d1                	jne    103ff1 <stringChr+0x33>
  104020:	8b 45 10             	mov    0x10(%ebp),%eax
  104023:	8b 55 fc             	mov    -0x4(%ebp),%edx
  104026:	89 10                	mov    %edx,(%eax)
  104028:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  10402d:	c9                   	leave  
  10402e:	c3                   	ret    

0010402f <stringChrR>:
  10402f:	55                   	push   %ebp
  104030:	89 e5                	mov    %esp,%ebp
  104032:	83 ec 14             	sub    $0x14,%esp
  104035:	e8 0b c4 ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  10403a:	05 c6 1f 00 00       	add    $0x1fc6,%eax
  10403f:	8b 45 0c             	mov    0xc(%ebp),%eax
  104042:	88 45 ec             	mov    %al,-0x14(%ebp)
  104045:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  10404c:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
  104050:	75 13                	jne    104065 <stringChrR+0x36>
  104052:	8b 45 10             	mov    0x10(%ebp),%eax
  104055:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
  10405b:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  104060:	eb 47                	jmp    1040a9 <stringChrR+0x7a>
  104062:	ff 45 fc             	incl   -0x4(%ebp)
  104065:	8b 55 fc             	mov    -0x4(%ebp),%edx
  104068:	8b 45 08             	mov    0x8(%ebp),%eax
  10406b:	01 d0                	add    %edx,%eax
  10406d:	8a 00                	mov    (%eax),%al
  10406f:	84 c0                	test   %al,%al
  104071:	75 ef                	jne    104062 <stringChrR+0x33>
  104073:	8b 45 10             	mov    0x10(%ebp),%eax
  104076:	8b 55 fc             	mov    -0x4(%ebp),%edx
  104079:	89 10                	mov    %edx,(%eax)
  10407b:	eb 21                	jmp    10409e <stringChrR+0x6f>
  10407d:	8b 55 fc             	mov    -0x4(%ebp),%edx
  104080:	8b 45 08             	mov    0x8(%ebp),%eax
  104083:	01 d0                	add    %edx,%eax
  104085:	8a 00                	mov    (%eax),%al
  104087:	38 45 ec             	cmp    %al,-0x14(%ebp)
  10408a:	75 0f                	jne    10409b <stringChrR+0x6c>
  10408c:	8b 45 10             	mov    0x10(%ebp),%eax
  10408f:	8b 55 fc             	mov    -0x4(%ebp),%edx
  104092:	89 10                	mov    %edx,(%eax)
  104094:	b8 00 00 00 00       	mov    $0x0,%eax
  104099:	eb 0e                	jmp    1040a9 <stringChrR+0x7a>
  10409b:	ff 4d fc             	decl   -0x4(%ebp)
  10409e:	83 7d fc 00          	cmpl   $0x0,-0x4(%ebp)
  1040a2:	79 d9                	jns    10407d <stringChrR+0x4e>
  1040a4:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  1040a9:	c9                   	leave  
  1040aa:	c3                   	ret    

001040ab <stringLen>:
  1040ab:	55                   	push   %ebp
  1040ac:	89 e5                	mov    %esp,%ebp
  1040ae:	83 ec 10             	sub    $0x10,%esp
  1040b1:	e8 8f c3 ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  1040b6:	05 4a 1f 00 00       	add    $0x1f4a,%eax
  1040bb:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  1040c2:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
  1040c6:	75 0a                	jne    1040d2 <stringLen+0x27>
  1040c8:	b8 00 00 00 00       	mov    $0x0,%eax
  1040cd:	eb 14                	jmp    1040e3 <stringLen+0x38>
  1040cf:	ff 45 fc             	incl   -0x4(%ebp)
  1040d2:	8b 55 fc             	mov    -0x4(%ebp),%edx
  1040d5:	8b 45 08             	mov    0x8(%ebp),%eax
  1040d8:	01 d0                	add    %edx,%eax
  1040da:	8a 00                	mov    (%eax),%al
  1040dc:	84 c0                	test   %al,%al
  1040de:	75 ef                	jne    1040cf <stringLen+0x24>
  1040e0:	8b 45 fc             	mov    -0x4(%ebp),%eax
  1040e3:	c9                   	leave  
  1040e4:	c3                   	ret    

001040e5 <stringCmp>:
  1040e5:	55                   	push   %ebp
  1040e6:	89 e5                	mov    %esp,%ebp
  1040e8:	83 ec 10             	sub    $0x10,%esp
  1040eb:	e8 55 c3 ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  1040f0:	05 10 1f 00 00       	add    $0x1f10,%eax
  1040f5:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  1040fc:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
  104100:	74 06                	je     104108 <stringCmp+0x23>
  104102:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
  104106:	75 3e                	jne    104146 <stringCmp+0x61>
  104108:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  10410d:	eb 44                	jmp    104153 <stringCmp+0x6e>
  10410f:	8b 55 fc             	mov    -0x4(%ebp),%edx
  104112:	8b 45 08             	mov    0x8(%ebp),%eax
  104115:	01 d0                	add    %edx,%eax
  104117:	8a 10                	mov    (%eax),%dl
  104119:	8b 4d fc             	mov    -0x4(%ebp),%ecx
  10411c:	8b 45 0c             	mov    0xc(%ebp),%eax
  10411f:	01 c8                	add    %ecx,%eax
  104121:	8a 00                	mov    (%eax),%al
  104123:	38 c2                	cmp    %al,%dl
  104125:	74 07                	je     10412e <stringCmp+0x49>
  104127:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  10412c:	eb 25                	jmp    104153 <stringCmp+0x6e>
  10412e:	8b 55 fc             	mov    -0x4(%ebp),%edx
  104131:	8b 45 08             	mov    0x8(%ebp),%eax
  104134:	01 d0                	add    %edx,%eax
  104136:	8a 00                	mov    (%eax),%al
  104138:	84 c0                	test   %al,%al
  10413a:	75 07                	jne    104143 <stringCmp+0x5e>
  10413c:	b8 00 00 00 00       	mov    $0x0,%eax
  104141:	eb 10                	jmp    104153 <stringCmp+0x6e>
  104143:	ff 45 fc             	incl   -0x4(%ebp)
  104146:	8b 45 fc             	mov    -0x4(%ebp),%eax
  104149:	3b 45 10             	cmp    0x10(%ebp),%eax
  10414c:	75 c1                	jne    10410f <stringCmp+0x2a>
  10414e:	b8 00 00 00 00       	mov    $0x0,%eax
  104153:	c9                   	leave  
  104154:	c3                   	ret    

00104155 <stringCpy>:
  104155:	55                   	push   %ebp
  104156:	89 e5                	mov    %esp,%ebp
  104158:	83 ec 10             	sub    $0x10,%esp
  10415b:	e8 e5 c2 ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  104160:	05 a0 1e 00 00       	add    $0x1ea0,%eax
  104165:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  10416c:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
  104170:	74 06                	je     104178 <stringCpy+0x23>
  104172:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
  104176:	75 2c                	jne    1041a4 <stringCpy+0x4f>
  104178:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  10417d:	eb 40                	jmp    1041bf <stringCpy+0x6a>
  10417f:	8b 55 fc             	mov    -0x4(%ebp),%edx
  104182:	8b 45 08             	mov    0x8(%ebp),%eax
  104185:	01 d0                	add    %edx,%eax
  104187:	8a 00                	mov    (%eax),%al
  104189:	84 c0                	test   %al,%al
  10418b:	74 21                	je     1041ae <stringCpy+0x59>
  10418d:	8b 55 fc             	mov    -0x4(%ebp),%edx
  104190:	8b 45 08             	mov    0x8(%ebp),%eax
  104193:	01 d0                	add    %edx,%eax
  104195:	8b 4d fc             	mov    -0x4(%ebp),%ecx
  104198:	8b 55 0c             	mov    0xc(%ebp),%edx
  10419b:	01 ca                	add    %ecx,%edx
  10419d:	8a 00                	mov    (%eax),%al
  10419f:	88 02                	mov    %al,(%edx)
  1041a1:	ff 45 fc             	incl   -0x4(%ebp)
  1041a4:	8b 45 fc             	mov    -0x4(%ebp),%eax
  1041a7:	3b 45 10             	cmp    0x10(%ebp),%eax
  1041aa:	75 d3                	jne    10417f <stringCpy+0x2a>
  1041ac:	eb 01                	jmp    1041af <stringCpy+0x5a>
  1041ae:	90                   	nop
  1041af:	8b 55 fc             	mov    -0x4(%ebp),%edx
  1041b2:	8b 45 0c             	mov    0xc(%ebp),%eax
  1041b5:	01 d0                	add    %edx,%eax
  1041b7:	c6 00 00             	movb   $0x0,(%eax)
  1041ba:	b8 00 00 00 00       	mov    $0x0,%eax
  1041bf:	c9                   	leave  
  1041c0:	c3                   	ret    

001041c1 <setBuffer>:
  1041c1:	55                   	push   %ebp
  1041c2:	89 e5                	mov    %esp,%ebp
  1041c4:	83 ec 14             	sub    $0x14,%esp
  1041c7:	e8 79 c2 ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  1041cc:	05 34 1e 00 00       	add    $0x1e34,%eax
  1041d1:	8b 45 10             	mov    0x10(%ebp),%eax
  1041d4:	88 45 ec             	mov    %al,-0x14(%ebp)
  1041d7:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  1041de:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
  1041e2:	75 07                	jne    1041eb <setBuffer+0x2a>
  1041e4:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  1041e9:	eb 26                	jmp    104211 <setBuffer+0x50>
  1041eb:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  1041f2:	eb 10                	jmp    104204 <setBuffer+0x43>
  1041f4:	8b 55 fc             	mov    -0x4(%ebp),%edx
  1041f7:	8b 45 08             	mov    0x8(%ebp),%eax
  1041fa:	01 c2                	add    %eax,%edx
  1041fc:	8a 45 ec             	mov    -0x14(%ebp),%al
  1041ff:	88 02                	mov    %al,(%edx)
  104201:	ff 45 fc             	incl   -0x4(%ebp)
  104204:	8b 45 fc             	mov    -0x4(%ebp),%eax
  104207:	3b 45 0c             	cmp    0xc(%ebp),%eax
  10420a:	7c e8                	jl     1041f4 <setBuffer+0x33>
  10420c:	b8 00 00 00 00       	mov    $0x0,%eax
  104211:	c9                   	leave  
  104212:	c3                   	ret    

00104213 <kEntry>:
  104213:	55                   	push   %ebp
  104214:	89 e5                	mov    %esp,%ebp
  104216:	53                   	push   %ebx
  104217:	83 ec 04             	sub    $0x4,%esp
  10421a:	e8 16 c6 ff ff       	call   100835 <__x86.get_pc_thunk.bx>
  10421f:	81 c3 e1 1d 00 00    	add    $0x1de1,%ebx
  104225:	e8 e2 f7 ff ff       	call   103a0c <initSerial>
  10422a:	e8 e5 c7 ff ff       	call   100a14 <initIdt>
  10422f:	e8 2e c6 ff ff       	call   100862 <initIntr>
  104234:	e8 d7 eb ff ff       	call   102e10 <initSeg>
  104239:	e8 1c fa ff ff       	call   103c5a <initVga>
  10423e:	e8 8a f9 ff ff       	call   103bcd <initTimer>
  104243:	e8 be e6 ff ff       	call   102906 <initKeyTable>
  104248:	e8 ae f0 ff ff       	call   1032fb <initFS>
  10424d:	e8 d4 f0 ff ff       	call   103326 <initSem>
  104252:	e8 70 f1 ff ff       	call   1033c7 <initDev>
  104257:	e8 4b f5 ff ff       	call   1037a7 <initProc>
  10425c:	90                   	nop
  10425d:	83 c4 04             	add    $0x4,%esp
  104260:	5b                   	pop    %ebx
  104261:	5d                   	pop    %ebp
  104262:	c3                   	ret    

00104263 <irqEmpty>:
  104263:	6a 00                	push   $0x0
  104265:	6a ff                	push   $0xffffffff
  104267:	eb 39                	jmp    1042a2 <asmDoIrq>

00104269 <irqErrorCode>:
  104269:	6a ff                	push   $0xffffffff
  10426b:	eb 35                	jmp    1042a2 <asmDoIrq>

0010426d <irqDoubleFault>:
  10426d:	6a ff                	push   $0xffffffff
  10426f:	eb 31                	jmp    1042a2 <asmDoIrq>

00104271 <irqInvalidTSS>:
  104271:	6a ff                	push   $0xffffffff
  104273:	eb 2d                	jmp    1042a2 <asmDoIrq>

00104275 <irqSegNotPresent>:
  104275:	6a ff                	push   $0xffffffff
  104277:	eb 29                	jmp    1042a2 <asmDoIrq>

00104279 <irqStackSegFault>:
  104279:	6a ff                	push   $0xffffffff
  10427b:	eb 25                	jmp    1042a2 <asmDoIrq>

0010427d <irqGProtectFault>:
  10427d:	6a 0d                	push   $0xd
  10427f:	eb 21                	jmp    1042a2 <asmDoIrq>

00104281 <irqPageFault>:
  104281:	6a ff                	push   $0xffffffff
  104283:	eb 1d                	jmp    1042a2 <asmDoIrq>

00104285 <irqAlignCheck>:
  104285:	6a ff                	push   $0xffffffff
  104287:	eb 19                	jmp    1042a2 <asmDoIrq>

00104289 <irqSecException>:
  104289:	6a ff                	push   $0xffffffff
  10428b:	eb 15                	jmp    1042a2 <asmDoIrq>

0010428d <irqTimer>:
  10428d:	6a 00                	push   $0x0
  10428f:	6a 20                	push   $0x20
  104291:	eb 0f                	jmp    1042a2 <asmDoIrq>

00104293 <irqKeyboard>:
  104293:	6a 00                	push   $0x0
  104295:	6a 21                	push   $0x21
  104297:	eb 09                	jmp    1042a2 <asmDoIrq>

00104299 <irqSyscall>:
  104299:	6a 00                	push   $0x0
  10429b:	68 80 00 00 00       	push   $0x80
  1042a0:	eb 00                	jmp    1042a2 <asmDoIrq>

001042a2 <asmDoIrq>:
  1042a2:	60                   	pusha  
  1042a3:	1e                   	push   %ds
  1042a4:	06                   	push   %es
  1042a5:	0f a0                	push   %fs
  1042a7:	0f a8                	push   %gs
  1042a9:	54                   	push   %esp
  1042aa:	e8 54 c9 ff ff       	call   100c03 <irqHandle>
  1042af:	83 c4 04             	add    $0x4,%esp
  1042b2:	0f a9                	pop    %gs
  1042b4:	0f a1                	pop    %fs
  1042b6:	07                   	pop    %es
  1042b7:	1f                   	pop    %ds
  1042b8:	61                   	popa   
  1042b9:	83 c4 04             	add    $0x4,%esp
  1042bc:	83 c4 04             	add    $0x4,%esp
  1042bf:	cf                   	iret   
